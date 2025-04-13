# Muninn

![Build](https://github.com/OnyxJeff/Muninn/actions/workflows/build.yml/badge.svg)
![Maintained](https://img.shields.io/badge/maintained-yes-blue)

**Muninn** is my household-wide **TrueNAS Scale** NAS server.  
It runs high-priority media and utility containers like:

- **Plex** – media server for movies and TV
- **Mealie** – self-hosted recipe and meal-planning app

This repo stores my Docker configurations and backup scripts for long-term reliability and re-deployment.

---

## 📦 Services

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