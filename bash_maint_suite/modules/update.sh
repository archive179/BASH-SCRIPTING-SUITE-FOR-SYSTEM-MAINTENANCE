#!/bin/bash

source config.ini

echo "Starting system update..."

if sudo apt update -y && sudo apt upgrade -y; then
    echo "$(date): System update successful" >> $LOG_DIR/update.log
else
    echo "$(date): ERROR - Update failed" >> $LOG_DIR/update.log
fi

sleep 2
