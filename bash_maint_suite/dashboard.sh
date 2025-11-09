#!/bin/bash

CONFIG_FILE="config.ini"
MODULE_DIR="modules"
LOG_DIR="logs"

source $CONFIG_FILE

while true; do
    clear
    echo "=========================================="
    echo "      LINUX SYSTEM MAINTENANCE SUITE      "
    echo "=========================================="
    echo "1. Run System Update"
    echo "2. Run Backup"
    echo "3. Monitor Logs"
    echo "4. System Cleanup"
    echo "5. Generate Report"
    echo "6. Exit"
    echo "------------------------------------------"
    read -p "Enter your choice: " choice

    case $choice in
        1) bash $MODULE_DIR/update.sh ;;
        2) bash $MODULE_DIR/backup.sh ;;
        3) bash $MODULE_DIR/monitor.sh ;;
        4) bash $MODULE_DIR/cleanup.sh ;;
        5) bash $MODULE_DIR/report.sh ;;
        6) echo "Goodbye!"; exit 0 ;;
        *) echo "Invalid choice!"; sleep 1 ;;
    esac
done
