#!/bin/bash

source config.ini

echo "Performing system cleanup..."

if sudo apt autoremove -y && sudo apt autoclean -y; then
    echo "$(date): Cleanup successful" >> $LOG_DIR/update.log
else
    echo "$(date): ERROR - Cleanup failed" >> $LOG_DIR/update.log
fi

sleep 2
