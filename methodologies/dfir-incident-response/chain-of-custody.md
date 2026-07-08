[6/12/2026 1:52 PM] 
# 📑 Chain of Custody (CoC) Reference Guide

## 1. Core Concept & Legal Significance
The **Chain of Custody (CoC)** is a continuous, chronological written roadmap that tracks every step an item of evidence takes from the exact moment of collection at a scene until it is presented in a court of law. 

* **The Golden Rule:** If you touch it, log it. There must be zero gaps in time.
* **Why it Matters:** Because digital evidence is easily altered, any unaccounted gap or failure to prove who had possession at any given second allows defense lawyers to claim tampering. A broken chain can cause the judge to throw the evidence out completely, ruining the entire case.
* **CHFI Exam Mapping:** Domain 3 (Digital Evidence) & Domain 4 (Procedures and Methodology).

---

## 2. Anatomy of a Standard CoC Document
While specific departmental forms vary, a valid CoC log must meticulously track the *Who, What, When, Where, and Why* across three primary sections:

### I. Header & Case Information
* **Case Number:** The unique identifier for the specific investigation.
* **Location:** The exact physical address or digital environment where the evidence was seized.
* **Primary Investigator/Collector:** The name and badge/ID of the person who originally secured the scene.

### II. Evidence Description (The "What")
* **Item Number:** A unique identifier for that specific piece of evidence (e.g., *Item #001*).
* **Detailed Description:** Brand, model, serial numbers, color, and physical condition (e.g., *"iPhone 13, black, cracked screen, Serial No. XXXXX"*).
* **Digital Hashes:** For digital assets, cryptographic hashes (like **SHA-256** or **MD5**) must be recorded immediately upon collection to mathematically prove the data hasn't been altered.

### III. The Transfer Log (The "Who & When")
Every single time the evidence changes hands or moves, a new row must be completed:
* **Date & Time:** The precise timestamp of the interaction.
* **Released By:** Name and signature of the person giving up custody.
* **Received By:** Name and signature of the person taking custody.
* **Purpose of Transfer:** The explicit reason for movement (e.g., *"Transport to lab"*, *"Forensic imaging"*, *"Secure storage"*).

---

## 3. Practical Workflow & Best Practices

### Step-by-Step Scenario Example

```
[10:00 AM] Investigator collects a suspect's USB drive 
    ➔ Bags it in anti-static packaging 
    ➔ Logs Line 1 on the CoC form (Date, time, location, signature).
        ⬇
[02:30 PM] Investigator arrives at forensics lab 
    ➔ Hands bag to Lab Tech 
    ➔ BOTH sign the transfer log at that exact minute.
        ⬇
[04:00 PM] Tech finishes creating a forensic image 
    ➔ Locks original USB drive in a secure locker 
    ➔ Logs the storage action on the form.
```
## Key Field Competencies & Best Practices
- **Secure Evidence Handling**: Always use proper physical controls, such as tamper-evident bags, anti-static packaging, and locked, access-controlled evidence lockers or secure digital vaults.

- **The Two-Person Rule**: Whenever possible, have a witness sign off on the transfer of highly critical evidence to add an extra layer of validation.

- **Process Accountability**: Maintain the professional discipline necessary to ensure all documentation can successfully withstand rigorous cross-examination in court.