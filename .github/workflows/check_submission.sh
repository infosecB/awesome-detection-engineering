#!/bin/bash

# Check GitHub repos added to README.md in a PR against the inclusion criteria
# in contributing.md, then comment and label the PR with the results.
#
# Runs under pull_request_target, so it must never execute or source anything
# from the PR itself -- it only reads the PR through the API.
#
# Local dry run: DRY_RUN=1 PR_NUMBER=26 ./.github/workflows/check_submission.sh

set -uo pipefail

REPO=${GITHUB_REPOSITORY:-infosecB/awesome-detection-engineering}
MIN_AGE_DAYS=${MIN_AGE_DAYS:-90}
MIN_STARS=${MIN_STARS:-25}
MAX_IDLE_DAYS=${MAX_IDLE_DAYS:-365}
MARKER='<!-- submission-check -->'

pr=$(gh api "repos/$REPO/pulls/$PR_NUMBER")
author=$(jq -r '.user.login' <<<"$pr")
body=$(jq -r '.body // ""' <<<"$pr")

# Pull owner/repo out of lines added to README.md.
repos=$(
	gh api "repos/$REPO/pulls/$PR_NUMBER/files" --paginate \
		--jq '.[] | select(.filename == "README.md") | .patch // ""' |
	grep -E '^\+' |
	grep -Eo 'https?://(www\.)?github\.com/[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+' |
	sed -E 's#https?://(www\.)?github\.com/##; s#\.git$##' |
	grep -Eiv "^(orgs|sponsors|topics|$REPO$)" |
	sort -uf
)

if [ -z "$repos" ]; then
	echo "No new GitHub repositories found in README.md changes."
	exit 0
fi

hard=0
soft=0
self_promo=0
rows=""

for r in $repos; do
	if ! info=$(gh api "repos/$r" 2>/dev/null); then
		rows+="| \`$r\` | :x: Not found (private, renamed, or deleted) |"$'\n'
		hard=1
		continue
	fi

	IFS=$'\t' read -r name stars age idle archived license owner fork <<<"$(jq -r '[
		.full_name,
		.stargazers_count,
		((now - (.created_at | fromdateiso8601)) / 86400 | floor),
		((now - (.pushed_at | fromdateiso8601)) / 86400 | floor),
		.archived,
		(.license.spdx_id // "none"),
		.owner.login,
		.fork
	] | @tsv' <<<"$info")"

	notes=()
	[ "$archived" = "true" ] && { notes+=(":x: Archived"); hard=1; }
	[ "$age" -lt "$MIN_AGE_DAYS" ] && { notes+=(":x: Only $age days old (minimum $MIN_AGE_DAYS)"); hard=1; }
	[ "$stars" -lt "$MIN_STARS" ] && { notes+=(":warning: $stars stars (guideline $MIN_STARS+)"); soft=1; }
	[ "$idle" -gt "$MAX_IDLE_DAYS" ] && { notes+=(":warning: No commits in $idle days"); soft=1; }
	[ "$license" = "none" ] && { notes+=(":warning: No license"); soft=1; }
	[ "$fork" = "true" ] && { notes+=(":warning: Is a fork"); soft=1; }

	if [ "$(tr A-Z a-z <<<"$owner")" = "$(tr A-Z a-z <<<"$author")" ] ||
		gh api "repos/$r/contributors?per_page=100" --jq '.[].login' 2>/dev/null | grep -qix "$author"; then
		notes+=(":information_source: PR author is the owner or a contributor")
		self_promo=1
	fi

	[ ${#notes[@]} -eq 0 ] && notes=(":white_check_mark: OK")
	summary=$(printf '%s<br>' "${notes[@]}")
	rows+="| [\`$name\`](https://github.com/$name) | ${summary%<br>} |"$'\n'
	echo "$name: stars=$stars age=${age}d idle=${idle}d archived=$archived license=$license"
done

disclosed=$(grep -Eic '^- \[[xX]\] I am the author' <<<"$body")
declared=$(grep -Eic '^- \[[xX]\] I (am the author|have no affiliation)' <<<"$body")
extra=""
if [ "$self_promo" = 1 ] && [ "$disclosed" = 0 ]; then
	extra+="- :x: You appear to be affiliated with a linked project but didn't disclose it in the PR description."$'\n'
	hard=1
elif [ "$declared" = 0 ]; then
	extra+="- :warning: The affiliation section of the PR template wasn't filled out."$'\n'
	soft=1
fi

comment="$MARKER
### Submission check

Linked repositories compared against the [inclusion criteria](https://github.com/$REPO/blob/main/contributing.md#inclusion-criteria). This is a guide; a maintainer makes the final call.

| Repository | Result |
|---|---|
$rows
$extra"

if [ -n "${DRY_RUN:-}" ]; then
	echo "-----"
	echo "$comment"
	echo "-----"
	echo "hard=$hard soft=$soft self_promo=$self_promo"
	exit 0
fi

# Update our previous comment if there is one, so pushes don't stack comments.
existing=$(gh api "repos/$REPO/issues/$PR_NUMBER/comments" --paginate \
	--jq ".[] | select(.body | startswith(\"$MARKER\")) | .id" | head -n1)
if [ -n "$existing" ]; then
	gh api -X PATCH "repos/$REPO/issues/comments/$existing" -f body="$comment" >/dev/null
else
	gh pr comment "$PR_NUMBER" --repo "$REPO" --body "$comment"
fi

gh label create "needs-criteria-review" --repo "$REPO" --color FBCA04 \
	--description "Submission may not meet inclusion criteria" --force >/dev/null
gh label create "self-promotion" --repo "$REPO" --color C5DEF5 \
	--description "Submitted by the resource's author" --force >/dev/null

if [ "$hard" = 1 ] || [ "$soft" = 1 ]; then
	gh pr edit "$PR_NUMBER" --repo "$REPO" --add-label "needs-criteria-review"
else
	gh pr edit "$PR_NUMBER" --repo "$REPO" --remove-label "needs-criteria-review" 2>/dev/null || true
fi
[ "$self_promo" = 1 ] && gh pr edit "$PR_NUMBER" --repo "$REPO" --add-label "self-promotion"

exit $hard
