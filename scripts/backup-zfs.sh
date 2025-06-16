#!/bin/bash
# Backup ZFS pool snapshots and important config files

set -euo pipefail

BACKUP_DIR="/mnt/backup/huginn"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

echo "Starting ZFS snapshot backup at $TIMESTAMP"

# Create a snapshot for each pool (adjust pool name as needed)
zfs snapshot -r huginnpool@backup-$TIMESTAMP

# Export snapshot (example, customize your dataset)
zfs send -R huginnpool@backup-$TIMESTAMP | gzip > "$BACKUP_DIR/huginnpool_backup_$TIMESTAMP.gz"

# Backup TrueNAS config (adjust path if needed)
cp /etc/truenas/config.db "$BACKUP_DIR/config_backup_$TIMESTAMP.db"

echo "Backup completed and saved to $BACKUP_DIR"