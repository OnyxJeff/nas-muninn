#!/bin/bash

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_DIR="./backups/archive_$TIMESTAMP"
mkdir -p "$BACKUP_DIR"

echo "[+] Backing up Plex config..."
docker cp plex:/config "$BACKUP_DIR/plex_config"

echo "[+] Backing up Mealie data..."
docker cp mealie:/app/data "$BACKUP_DIR/mealie_data"

echo "[✓] Backup complete: $BACKUP_DIR"