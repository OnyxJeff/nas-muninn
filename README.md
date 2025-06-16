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
├── .github/workflows/    # CI for YAML validation
├── backups/              # Exported or example snapshot files
├── docker/               # YAML-based -darr stack applications
└── README.md             # You're reading it!
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