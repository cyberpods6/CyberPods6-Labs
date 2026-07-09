# Digital Evidence & Data Acquisition

The Best Evidence Rule requires the original document or recording be presented in court unless unavailable for a valid reason. The Chain of Custody establishes the credibility of evidence in court by documenting the chronological history of who handled the evidence, along with the date and time of each transfer. If an evidence seal must be broken, the investigator should document the action and reseal it with a new, dated seal.

## Order of Volatility

Investigators must collect transient data before powering off a machine to avoid permanent loss. The priority order is:

- CPU, Cache, and Register Contents (Extremely high volatility)
- Routing Tables, ARP Cache, Process Tables, Kernel Statistics
- Memory (RAM) (Data lost upon shutdown)
- Temporary File Systems / Swap Files (Moderate volatility)
- Disk / Hard Drive Contents (Low volatility; survives power loss)
- Remote Logging, Physical Config, and Archival Media

## Data Acquisition Methods

- **Live Acquisition**: Collecting data from a running system to capture volatile data (RAM, network connections). Best when a system cannot be shut down.

- **Dead Acquisition**: Creating a forensic image of a powered-off system using hardware write-blockers. This minimizes the risk of altering the original data.

- **Remote Acquisition**: Collecting data over a network when physical access to the device is impossible.

## Practical Labs (Domains 3 & 4)
- Lab 2-5, 2-6 & 4-1, 4-2: Creating dd and E01 image files of a hard disk partition.
- Lab 4-4: Acquiring volatile memory (RAM) from Windows and Linux workstations.

## Discord Channels for Evidence & Acquisition
- #forensics-different-types-of-evidence
- #forensics-volatility
- #forensics-memory-dump