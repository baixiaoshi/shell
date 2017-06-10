#!/bin/bash
REDISCLI="/usr/local/src/redis-3.0.5/src/redis-cli"
LOGFILE="/var/log/keepalived-reids-state.log"
echo "[backup]" >> $LOGFILE
date >> $LOGFILE
echo "being slave ..." >> $LOGFILE 2>&1
sleep 15
echo "run slaveof cmd ..." >> $LOGFILE
$REDISCLI SLAVEOF 10.6.1.114 6379 >> $LOGFILE 2>&
