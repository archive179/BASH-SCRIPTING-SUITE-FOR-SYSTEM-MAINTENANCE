#!/bin/bash

source config.ini

REPORT_FILE="logs/report_$(date +%F).txt"

echo "Generating report..."

{
    echo "======================================="
    echo "   Daily System Maintenance Report"
    echo "======================================="
    echo "Generated on: $(date)"
    echo ""
    echo "Backup Directory Status:"
    du -sh $BACKUP_DEST 2>/dev/null
    echo ""
    echo "Disk Usage:"
    df -h | grep -E '^/dev'
    echo ""
    echo "Last 10 log entries:"
    tail -10 logs/update.log
} > "$REPORT_FILE"

echo "Report generated at $REPORT_FILE"

sleep 2
