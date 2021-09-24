# Awesome Detection Engineering [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> A curated list of tools and resources for cybersecurity detection engineers.

## Contents

- [Concepts & Frameworks](#concepts--frameworks)
- [Signatures & Content](#signatures--content)
- [Logging, Monitoring & Data Sources](#logging-monitoring--data-sources)
- [General Resources](#general-resources)

## Concepts & Frameworks 

- [MITRE ATT&CK](https://attack.mitre.org/) - The foundational framework of adversary tactics, techniques, and procedures based on real-world observations.
- [Alerting and Detection Strategies (ADS) Framework | Palantir](https://github.com/palantir/alerting-detection-strategy-framework) - A blueprint for creating and documenting effective detection content.
- [Detection Maturity Level (DML) Model | Ryan Stillions](http://ryanstillions.blogspot.com/2014/04/the-dml-model_21.html) - Defines and describes 8 different levels of an organization's threat detection program maturity.
- [The Pyramid of Pain | David J Bianco](http://detect-respond.blogspot.com/2013/03/the-pyramid-of-pain.html) - A model used to describe various categorizations of indicator's of compromise and their level of effectiveness in detecting threat actors. 
- [Cyber Kill Chain | Lockheed Martin](https://www.lockheedmartin.com/us/what-we-do/aerospace-defense/cyber/cyber-kill-chain.html) - Lockheed Martin's framework that outlines the 7 stages commonly observed in a cyber attack.
- [MaGMa (Management, Growth and Metrics & assessment)) Use Case Defintion Model](https://www.betaalvereniging.nl/wp-content/uploads/FI-ISAC-use-case-framework-verkorte-versie.pdf) - A business-centric approach for defining threat detection use cases.

## Signatures & Content

- [MITRE Cyber Analytics Repository (CAR)](https://car.mitre.org) - MITRE's well-maintained repository of detection content.
- [Sigma Rules](https://github.com/Neo23x0/sigma) - Sigma's repository of turnkey detection content. Content can be converted for use with most SIEMs.
- [Uncoder Rule Converter](https://uncoder.io) - A tool that can convert detection content for use with most SIEMs.
- [Valhalla YARA rules](https://valhalla.nextron-systems.com)
- [Splunk Security Content](https://github.com/splunk/security_content) - Splunk's open-source and frequently updated detection content that can be tweaked for use in other tools.

## Logging, Monitoring & Data Sources

- [Windows Logging Cheatsheets](https://www.malwarearchaeology.com/cheat-sheets) - Multiple cheatsheets outlined recommendations for Windows Event logging at various levels of granularity.
- [MITRE ATT&CK Data Sources](https://medium.com/mitre-attack/defining-attack-data-sources-part-i-4c39e581454f) - MITRE describes various data sources and how they relate to the TTPs found in the MITRE ATT&CK framework.

## General Resources

- [Lessons Learned in Detection Engineering | Ryan McGeehan](https://medium.com/starting-up-security/lessons-learned-in-detection-engineering-304aec709856) - A well experienced detection engineer describes in detail his observations, challenges, and recommendations for building an effective threat detection program.
- [ATT&CK Navigator](https://mitre-attack.github.io/attack-navigator/enterprise/) - MITRE's 
- [Detection Engineering Twitter List](https://twitter.com/i/lists/952735755838738432) - A Twitter list of Detection Engineers.

- [DETT&CT: MAPPING YOUR BLUE TEAM TO MITRE ATT&CK™](https://www.mbsecure.nl/blog/2019/5/dettact-mapping-your-blue-team-to-mitre-attack)
- [Summit Route - How to write security alerts](https://summitroute.com/blog/2016/11/22/how_to_write_security_alerts/)
- [CI/CD Detection Engineering: Splunk's Security Content, Part 1 | José Enrique Hernandez](https://www.splunk.com/en_us/blog/security/ci-cd-detection-engineering-splunk-security-content-part-1.html)
- [CI/CD Detection Engineering: Splunk's Attack Range, Part 2 | José Enrique Hernandez](https://www.splunk.com/en_us/blog/security/ci-cd-detection-engineering-splunk-s-attack-range-part-2.html)
- [CI/CD Detection Engineering: Failing, Part 3 | José Enrique Hernandez](https://www.splunk.com/en_us/blog/security/ci-cd-detection-engineering-failing-part-3.html)
