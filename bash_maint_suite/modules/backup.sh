#!/bin/bash

source config.ini

timestamp=$(date +%F_%T)
backup_file="$BACKUP_DEST/backup_$timestamp.tar.gz"

mkdir -p $BACKUP_DEST

echo "Creating backup..."

if tar -czf "$backup_file" "$BACKUP_SOURCE"; then
    echo "$(date): Backup successful - $backup_file" >> $LOG_DIR/update.log
else
    echo "$(date): ERROR - Backup failed" >> $LOG_DIR/update.log
fi

sleep 2
