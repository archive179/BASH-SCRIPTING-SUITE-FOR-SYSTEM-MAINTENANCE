#!/bin/bash

source config.ini

echo "Monitoring log file for errors..."

if grep -qi "$ALERT_KEYWORD" "$SYS_LOG"; then
    echo "$(date): ALERT - Keyword '$ALERT_KEYWORD' detected" >> $LOG_DIR/update.log
    echo "Error detected, sending mail notification..."
    echo "System Alert: '$ALERT_KEYWORD' found in logs" | mail -s "System Log Alert" $MAIL_ALERT
else
    echo "$(date): No issues detected" >> $LOG_DIR/update.log
fi

sleep 2
