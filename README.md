# Awesome Detection Engineering [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> A curated list of tools and resources for Threat Detection Engineers.

## Contents

- [Concepts & Frameworks](#concepts--frameworks)
- [Signatures & Content](#signatures--content)
- [Logging, Monitoring & Data Sources](#logging-monitoring--data-sources)
- [General Resources](#general-resources)
- [Blog Archive](#blog-archive)

## Concepts & Frameworks 

- [MITRE ATT&CK](https://attack.mitre.org/) - The foundational framework of adversary tactics, techniques, and procedures based on real-world observations.
- [Alerting and Detection Strategies (ADS) Framework | Palantir](https://github.com/palantir/alerting-detection-strategy-framework) - A blueprint for creating and documenting effective detection content.
- [Detection Engineering Maturity Matrix | Kyle Bailey](https://detectionengineering.io) - A detailed matrix that serves as a tool to measure the overall maturity of an organization's Detection Engineering program. 
- [Detection Maturity Level (DML) Model | Ryan Stillions](http://ryanstillions.blogspot.com/2014/04/the-dml-model_21.html) - Defines and describes 8 different levels of an organization's threat detection program maturity.
- [The Pyramid of Pain | David J Bianco](http://detect-respond.blogspot.com/2013/03/the-pyramid-of-pain.html) - A model used to describe various categorizations of indicator's of compromise and their level of effectiveness in detecting threat actors. 
- [Cyber Kill Chain | Lockheed Martin](https://www.lockheedmartin.com/us/what-we-do/aerospace-defense/cyber/cyber-kill-chain.html) - Lockheed Martin's framework that outlines the 7 stages commonly observed in a cyber attack.
- [MaGMa (Management, Growth and Metrics & Assessment) Use Case Defintion Model](https://www.betaalvereniging.nl/wp-content/uploads/FI-ISAC-use-case-framework-verkorte-versie.pdf) - A business-centric approach for defining threat detection use cases.

## Detection Content & Signatures

- [MITRE Cyber Analytics Repository (CAR)](https://car.mitre.org) - MITRE's well-maintained repository of detection content.
- [CAR Coverage Comparision](https://car.mitre.org/coverage/) - A matrix of MITRE ATT&CK technique IDs and links to available Splunk Security Content, Elastic detection rules, Sigma rules, and CAR content.
- [Sigma Rules](https://github.com/Neo23x0/sigma) - Sigma's repository of turnkey detection content. Content can be converted for use with most SIEMs.
- [Uncoder Rule Converter](https://uncoder.io) - A tool that can convert detection content for use with most SIEMs.
- [Splunk Security Content](https://github.com/splunk/security_content) - Splunk's open-source and frequently updated detection content that can be tweaked for use in other tools.
- [Elastic Detection Rules](https://github.com/elastic/detection-rules/tree/main/rules) - Elastic's detection rules written natively for the Elastic SIEM. Can easily be converted for use by other SIEMs using Uncoder.
- [AWS GuardDuty Findings](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_finding-types-active.html) - A list of all AWS GuardDuty Findings, their descriptions, and associated data sources.
- [GCP Security Command Center Findings](https://cloud.google.com/security-command-center/docs/concepts-security-sources#threats) - A list of all GCP Security Command Center Findings, their descriptions, and associated data sources.
- [Azure Defender for Cloud Security Alerts](https://docs.microsoft.com/en-us/azure/defender-for-cloud/alerts-reference) - A list of all Azure Security for Cloud Alerts, their descriptions, and associated data sources.
- [Center for Threat Informed Defense Security Stack Mappings](https://github.com/center-for-threat-informed-defense/security-stack-mappings) - Describes cloud computing platform's (Azure, AWS) built-in detection capabilities and their mapings to the MITRE ATT&CK framework.

## Logging, Monitoring & Data Sources

- [Windows Logging Cheatsheets](https://www.malwarearchaeology.com/cheat-sheets) - Multiple cheatsheets outlined recommendations for Windows Event logging at various levels of granularity.
- [Linux auditd Detection Ruleset](https://github.com/Neo23x0/auditd/blob/master/audit.rules)
- [MITRE ATT&CK Data Sources Blog Post](https://medium.com/mitre-attack/defining-attack-data-sources-part-i-4c39e581454f) - MITRE describes various data sources and how they relate to the TTPs found in the MITRE ATT&CK framework.
- [MITRE ATT&CK Data Sources List](https://attack.mitre.org/datasources/) - Data source objects added to MITRE ATT&CK as part of v10.
- [Splunk Common Information Model (CIM)](https://docs.splunk.com/Documentation/CIM/5.0.0/User/Overview) - Splunk's proprietary model used as a framework for normalizing security data.
- [Elastic Common Schema](https://www.elastic.co/guide/en/ecs/current/ecs-getting-started.html) - Elastic's proprietary model used as a framework for normalizing security data.
- [Open Cybersecurity Schema Framework (OCSF)](https://schema.ocsf.io/categories?extensions) - An opensource security data source and event schema.
- [Loghub](https://github.com/logpai/loghub) - opensource and freely available security data sources for research and testing.

## General Resources

- [Lessons Learned in Detection Engineering | Ryan McGeehan](https://medium.com/starting-up-security/lessons-learned-in-detection-engineering-304aec709856) - A well experienced detection engineer describes in detail his observations, challenges, and recommendations for building an effective threat detection program.
- [ATT&CK Navigator](https://mitre-attack.github.io/attack-navigator/enterprise/) - MITRE's open-source tool that can be used to track detection coverage, visibility, and other efforts and their relationship to the ATT&CK framework.
- [Detection Engineering Twitter List](https://twitter.com/i/lists/952735755838738432) - A Twitter list of Detection Engineers.
- [DETT&CT: MAPPING YOUR BLUE TEAM TO MITRE ATT&CK™](https://www.mbsecure.nl/blog/2019/5/dettact-mapping-your-blue-team-to-mitre-attack)
- [Summit Route - How to write security alerts](https://summitroute.com/blog/2016/11/22/how_to_write_security_alerts/)
- CI/CD Detection Engineering: Splunk's Security Content, [Part 1](https://www.splunk.com/en_us/blog/security/ci-cd-detection-engineering-splunk-security-content-part-1.html) Splunk's Attack Range, [Part 2](https://www.splunk.com/en_us/blog/security/ci-cd-detection-engineering-splunk-s-attack-range-part-2.html) Failing, [Part 3](https://www.splunk.com/en_us/blog/security/ci-cd-detection-engineering-failing-part-3.html) | José Enrique Hernandez - A three part blog series loosely describing how to deploy detection as code in a Splunk environment using the Splunk Security Research team's Security Content.
- [The Four Types of Threat Detection - Dragos](https://www.dragos.com/wp-content/uploads/The_Four_Types-of_Threat_Detection.pdf)

## Blog Archive

### 2022
[How to Write an Actionable Alert | Daniel Wyleczuk-Stern](https://catscrdl.io/blog/howtowriteanactionablealert/)

### 2021

[Detection-as-Code — Testing | Kyle Bailey](https://medium.com/@kyle-bailey/detection-as-code-testing-c03b0eea7fb8)
[Practical Detection-as-Code | Brendan Chamberlain](https://medium.com/@infosecb/practical-detection-as-code-8a8fe7c65676)

### 2020

### Older
