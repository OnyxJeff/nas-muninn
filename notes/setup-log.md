# Huginn Setup and Troubleshooting Log

## [YYYY-MM-DD] Initial Setup

- Installed TrueNAS Scale on DarkRock Classico server  
- Configured networking using static IP from `truenas-network.yaml`  
- Created ZFS pool `huginn-pool` with RAIDZ2 layout  
- Set up SMB shares for video storage and VM access

## [YYYY-MM-DD] VM Setup

- Created UpSimVM Windows VM with 6 cores, 16GB RAM, 150GB vSSD  
- Added SMB mount scripts for auto-connecting NAS shares  
- Verified RDP connectivity and network shares

## [YYYY-MM-DD] Backup and Monitoring

- Implemented ZFS backup scripts (`backup-zfs.sh`)  
- Set up SMART disk health checks (`smart-check.sh`)  
- Scheduled regular snapshot jobs

---

*Keep adding notes here as you continue building and troubleshooting Huginn.*