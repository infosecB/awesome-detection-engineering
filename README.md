# Awesome Detection Engineering [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> A curated list of tools and resources for Threat Detection Engineers.

## Contents

- [Concepts & Frameworks](#concepts--frameworks)
- [Detection Content & Signatures](#detection-content--signatures)
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
- [Synthetic Adversarial Log Objects (SALO) | Splunk](https://github.com/splunk/salo) - Synthetic Adversarial Log Objects (SALO) is a framework for the generation of log events without the need for infrastructure or actions to initiate the event that causes a log event.

## Detection Content & Signatures

- [MITRE Cyber Analytics Repository (CAR)](https://car.mitre.org) - MITRE's well-maintained repository of detection content.
- [CAR Coverage Comparision](https://car.mitre.org/coverage/) - A matrix of MITRE ATT&CK technique IDs and links to available Splunk Security Content, Elastic detection rules, Sigma rules, and CAR content.
- [Sigma Rules](https://github.com/Neo23x0/sigma) - Sigma's repository of turnkey detection content. Content can be converted for use with most SIEMs.
- [Sigma rule converter](https://sigconverter.io/) - An opensource tool that can convert detection content for use with most SIEMs.
- [Splunk Security Content](https://github.com/splunk/security_content) - Splunk's open-source and frequently updated detection content that can be tweaked for use in other tools.
- [Elastic Detection Rules](https://github.com/elastic/detection-rules/tree/main/rules) - Elastic's detection rules written natively for the Elastic SIEM. Can easily be converted for use by other SIEMs using Uncoder.
- [Elastic Endpoint Behavioral Rules](https://github.com/elastic/protections-artifacts/tree/main/behavior/rules) - Elastic's endpoint behavioral (prevention) rules written in EQL, natively for the Elastic endpoint agent.
- [Elastic Yara Signatures](https://github.com/elastic/protections-artifacts/tree/main/yara/rules) - Elastic's YARA signatures, which run on the Elastic endpoint agent.
- [Elastic Endpoint Ransomware Artifact](https://github.com/elastic/protections-artifacts/tree/main/ransomware/artifact.lua) - Elastic's ranswomware artifact, which runs on the Elastic endpoint agent.
- [Chronicle (GCP) Detection Rules](https://github.com/chronicle/detection-rules) - Chronicle's detection rules written natively for the the Chronicle Platform.
- [Exabeam Content Library](https://github.com/ExabeamLabs/Content-Library-CIM2) - Exabeam's out of the box detection content compatible with the Exabeam Common Information Model.
- [Panther Labs Detection Rules](https://github.com/panther-labs/panther-analysis/tree/master/rules) - Panther Lab's native detection rules.
- [AWS GuardDuty Findings](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_finding-types-active.html) - A list of all AWS GuardDuty Findings, their descriptions, and associated data sources.
- [GCP Security Command Center Findings](https://cloud.google.com/security-command-center/docs/concepts-security-sources#threats) - A list of all GCP Security Command Center Findings, their descriptions, and associated data sources.
- [Azure Defender for Cloud Security Alerts](https://docs.microsoft.com/en-us/azure/defender-for-cloud/alerts-reference) - A list of all Azure Security for Cloud Alerts, their descriptions, and associated data sources.
- [Center for Threat Informed Defense Security Stack Mappings](https://github.com/center-for-threat-informed-defense/security-stack-mappings) - Describes cloud computing platform's (Azure, AWS) built-in detection capabilities and their mapings to the MITRE ATT&CK framework.
- [Detection Engineering with Splunk](https://github.com/west-wind/Threat-Hunting-With-Splunk) - A GitHub repo dedicated to sharing detection analytics in SPL.
- [Google Cloud Security Analytics](https://github.com/GoogleCloudPlatform/security-analytics) - This repository serves as a community-driven list of sample security analytics for auditing cloud usage and for detecting threats to your data & workloads in Google Cloud.
- [KQL Advanced Hunting Queries & Analytics Rules](https://github.com/Bert-JanP/Hunting-Queries-Detection-Rules) - A list of endpoint detections and hunting queries for Microsoft Defender for Endpoint, Defender For Identity, and Defender For Cloud Apps.

## Logging, Monitoring & Data Sources

- [Windows Logging Cheatsheets](https://www.malwarearchaeology.com/cheat-sheets) - Multiple cheatsheets outlined recommendations for Windows Event logging at various levels of granularity.
- [Linux auditd Detection Ruleset](https://github.com/Neo23x0/auditd/blob/master/audit.rules) - Linux auditd ruleset that produces telemetry required for threat detection use cases.
- [MITRE ATT&CK Data Sources Blog Post](https://medium.com/mitre-attack/defining-attack-data-sources-part-i-4c39e581454f) - MITRE describes various data sources and how they relate to the TTPs found in the MITRE ATT&CK framework.
- [MITRE ATT&CK Data Sources List](https://attack.mitre.org/datasources/) - Data source objects added to MITRE ATT&CK as part of v10.
- [Splunk Common Information Model (CIM)](https://docs.splunk.com/Documentation/CIM/5.0.0/User/Overview) - Splunk's proprietary model used as a framework for normalizing security data.
- [Elastic Common Schema](https://www.elastic.co/guide/en/ecs/current/ecs-getting-started.html) - Elastic's proprietary model used as a framework for normalizing security data.
- [Exabeam Common Information Model](https://github.com/ExabeamLabs/CIMLibrary) - Exabeam's proprietary model used as a framework for normalizing security data.
- [Open Cybersecurity Schema Framework (OCSF)](https://schema.ocsf.io/categories?extensions) - An opensource security data source and event schema.
- [Loghub](https://github.com/logpai/loghub) - Opensource and freely available security data sources for research and testing.
- [Elastalert | Yelp](https://github.com/Yelp/elastalert) - ElastAlert is a simple framework for alerting on anomalies, spikes, or other patterns of interest from data in Elasticsearch.
- [Matano](https://github.com/matanolabs/matano) - Open source cloud-native security lake platform (SIEM alternative) for threat hunting, Python detections-as-code, and incident response on AWS 🦀.

## General Resources
 
- [ATT&CK Navigator | MITRE](https://mitre-attack.github.io/attack-navigator/enterprise/) - MITRE's open-source tool that can be used to track detection coverage, visibility, and other efforts and their relationship to the ATT&CK framework.
- [Detection Engineering Weekly | Zack Allen](https://detectionengineering.net) - A newsletter dedicated to news and how-tos for Detection Engineering.
- [Detection Engineering Twitter List | Zack Allen](https://twitter.com/i/lists/1629936556298436608) - A Twitter list of Detection Engineering thought leaders.
- [DETT&CT: MAPPING YOUR BLUE TEAM TO MITRE ATT&CK™](https://www.mbsecure.nl/blog/2019/5/dettact-mapping-your-blue-team-to-mitre-attack)
- [Awesome Kubernetes (K8s) Threat Detection](https://github.com/jatrost/awesome-kubernetes-threat-detection) - Another Awesome List dedicated to Kubernetes (K8s) threat detection.
- [Living Off the Living Off the Land](https://lolol.farm) - A collection of resources for thriving off the land.