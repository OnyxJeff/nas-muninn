# Muninn

![Build Status](https://github.com/OnyxJeff/nas-muninn/actions/workflows/build.yml/badge.svg)
![Maintenance](https://img.shields.io/maintenance/yes/2025.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![GitHub release](https://img.shields.io/github/v/release/OnyxJeff/nas-muninn)
![Issues](https://img.shields.io/github/issues/OnyxJeff/nas-muninn)

**Muninn** is my household-wide **TrueNAS Scale** NAS server.  
It runs high-priority media and utility containers like:

- **Plex** – media server for movies and TV
- **Mealie** – self-hosted recipe and meal-planning app

This repo stores my Docker configurations and backup scripts for long-term reliability and re-deployment.

---

## 📁 Repo Structure

```text
muninn/
├── .github/workflows/   # GitHub Actions workflows for validating YAML files and automating CI tasks
├── backups/             # Backup scripts, cron jobs, and exported snapshots for ZFS, TrueNAS, or container configs
├── docker/              # Docker Compose stacks used on Muninn (e.g. -darr stack, Plex, supporting services)
├── hardware/            # Hardware-related documentation, part lists, benchmarks, or system-specific tuning notes
├── notes/               # Freeform documentation, planning notes, and operational details (NAS layout, RAID config, etc.)
├── scripts/             # Custom shell scripts used for automation, cleanup, health checks, or storage tasks
├── vm/                  # VM configs, exported settings, or Proxmox/TrueNAS VM definitions
└── README.md            # Project overview and documentation index
```

---

## 🧰 Services

- Plex Media Server
- Mealie (with built-in DB and persistent volumes)

---

## 🐳 Docker Usage

```bash
cd docker/plex
docker-compose up -d

cd ../mealie
docker-compose up -d
```

---

## 💾 Backup

```bash
bash backups/backup.sh
```

- Plex config and media paths
- Mealie DB and data volume

---

📬 Maintained By
Jeff M. • [@OnyxJeff](https://www.github.com/onyxjeff)