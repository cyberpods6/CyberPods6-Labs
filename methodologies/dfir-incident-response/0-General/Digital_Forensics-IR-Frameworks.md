
Here are the main authoritative DFIR sources. The most important finding is that **NIST SP 800-61 Rev. 2 has been withdrawn**, which affects the incident response file in the CyberPods6 repo. I worked from search results and didn't open every page in full.

## NIST

| Resource | Link | Notes |
|---|---|---|
| **SP 800-61 Rev. 3**, Incident Response Recommendations and Considerations for Cybersecurity Risk Management (CSF 2.0 Community Profile) | [csrc.nist.gov](https://csrc.nist.gov/pubs/sp/800/61/r3/final) · [DOI](https://doi.org/10.6028/NIST.SP.800-61r3) | Rev. 2 was withdrawn on April 3, 2025 and fully superseded by Rev. 3. |
| NIST incident response project page | [csrc.nist.gov/projects/incident-response](https://csrc.nist.gov/projects/incident-response) | Hub for current IR guidance. |
| **SP 800-61 Rev. 2** (legacy) | [PDF](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-61r2.pdf) | Withdrawn, but useful for comparing the older four-phase model. |
| **SP 800-86**, Guide to Integrating Forensic Techniques into Incident Response | [NIST page](https://www.nist.gov/publications/guide-integrating-forensic-techniques-incident-response) · [PDF](https://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-86.pdf) | It gives practical guidance on computer and network forensics from an IT view rather than a law enforcement view. It dates from 2006. |
| **CFTT**, Computer Forensics Tool Testing Program | [NIST page](https://www.nist.gov/itl/ssd/software-quality-group/computer-forensics-tool-testing-program-cftt) · [cftt.nist.gov](https://www.cftt.nist.gov) | It exists to ensure the reliability of forensic tools for law enforcement, and DHS partners with NIST to publish tool test reports. |

## Digital evidence standards and best practices

| Resource | Link | Notes |
|---|---|---|
| **SWGDE** published documents | [swgde.org/documents](https://www.swgde.org/documents) | The main U.S. best-practice body. |
| SWGDE 18-F-002, Digital Evidence Collection | [link](https://www.swgde.org/documents/published-complete-listing/18-f-002-best-practices-for-digital-evidence-collection/) | It stresses preserving data integrity during collection. |
| SWGDE 22-F-003, Remote Collection from an Endpoint | [link](https://www.swgde.org/documents/published-complete-listing/22-f-003-best-practices-for-remote-collection-of-digital-evidence-from-an-endpoint/) | |
| SWGDE 23-F-004, Cloud Service Providers | [PDF](https://www.swgde.org/wp-content/uploads/2025/02/SWGDE-23-F-004-1.1-Best-Practices-for-Digital-Evidence-Acquisition-Preservation-and-Analysis-from-Cloud-Service-Providers.pdf) | |
| SWGDE 18-F-003, Mobile Device Evidence | [PDF](https://www.swgde.org/wp-content/uploads/2025/09/2025-08-21-Best-Practices-for-Mobile-Device-Evidence-Collection-Preservation-Handling-and-Acquisition-18-F-003-2.0.pdf) | |
| SWGDE 23-Q-001, Presenting Digital Evidence in Legal Proceedings | [link](https://www.swgde.org/documents/published-complete-listing/23-q-001-best-practices-for-personnel-presenting-digital-evidence-in-legal-proceedings/) | Covers the expert witness role, rules of evidence, and Daubert/Frye. |
| **ISO/IEC 27037:2012**, identification, collection, acquisition, and preservation of digital evidence | [IEC webstore](https://webstore.iec.ch/en/publication/11317) | Paid standard. For the companion standards, 27041 covers assurance of methods and tools, 27042 covers analysis and interpretation, 27043 covers investigation processes, and 27050 covers electronic discovery. Overview: [iso27001security.com/html/27037](https://www.iso27001security.com/html/27037) |

## Incident response frameworks

| Resource | Link | Notes |
|---|---|---|
| **CISA** Federal Incident and Vulnerability Response Playbooks | [CISA announcement](https://www.cisa.gov/news-events/news/incident-and-vulnerability-response-playbooks) · [PDF](https://cisa.gov/sites/default/files/2024-08/Federal_Government_Cybersecurity_Incident_and_Vulnerability_Response_Playbooks_508C.pdf) | The playbooks came out of President Biden's cybersecurity executive order and give federal civilian agencies standard response procedures. Private-sector use is encouraged as a benchmark. |
| **SANS** Incident Handler's Handbook (Kral) | [GIAC paper](https://www.giac.org/research-papers/33901) | It established the PICERL six-phase method: Preparation, Identification, Containment, Eradication, Recovery, Lessons Learned. It dates from 2012. |

## eDiscovery

| Resource | Link | Notes |
|---|---|---|
| **EDRM** model | [edrm.net/resources/frameworks-and-standards/edrm-model](https://www.edrm.net/resources/frameworks-and-standards/edrm-model/) | It is a conceptual standard with nine stages, and the stages are not strictly linear. This URL comes from a reference in a secondary source, so confirm it loads. |
| EDRM overview | [TechTarget](https://www.techtarget.com/searchcio/definition/EDRM-electronic-discovery-reference-model) | |

## Notes for your course

1. **Update the repo's IR plan file.** `forensics-incident-response-plan.md` presents the NIST four-stage model from Rev. 2, which is now withdrawn. Rev. 3 realigns incident response with the CSF 2.0 functions, so your Module 01 materials should reflect that.
2. **The SWGDE document cites NIST IR 8354**, "Digital Investigation Techniques: A NIST Scientific Foundation Review," as support for the scientific validity of digital forensics. I didn't find a direct link, but it is useful for the Standards and Legal subtopics.
3. **Forensic readiness** has no single dedicated standard in these results. ISO/IEC 27043 (investigation processes) and SP 800-86's section on establishing a forensic capability are the closest matches.

I can search further for forensic readiness, Daubert/Frye case law, or international frameworks (ENFSI, ACPO/NPCC guidelines), if you want those next.

Sources:
- [NIST SP 800-61 Rev. 2 (withdrawal notice)](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-61r2.pdf)
- [NIST SP 800-86](https://www.nist.gov/publications/guide-integrating-forensic-techniques-incident-response)
- [NIST CFTT](https://www.nist.gov/node/1207086)
- [SWGDE 18-F-002](https://www.swgde.org/documents/published-complete-listing/18-f-002-best-practices-for-digital-evidence-collection/)
- [ISO/IEC 27037 overview](https://www.iso27001security.com/html/27037)
- [CISA playbooks (Dark Reading)](https://www.darkreading.com/cyberattacks-data-breaches/cisa-releases-incident-and-vulnerability-response-playbooks-to-strengthen-cybersecurity-for-federal-civilian-agencies-)
- [TechTarget EDRM](https://www.techtarget.com/searchcio/definition/EDRM-electronic-discovery-reference-model)
- [SANS PICERL summary](https://theartofservice.com/frameworks/sans-incident-handler-s-handbook-and-picerl-methodology)