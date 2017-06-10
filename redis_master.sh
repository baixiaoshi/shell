#!/bin/bash
REDISCLI="/usr/local/src/redis-3.0.5/src/redis-cli"
LOGFILE="/var/log/keepalived-redis-state.log"
echo "[master]" >> $LOGFILE #记录文字
date >> $LOGFILE #打印日期
echo "being master ..." >> $LOGFILE 2>&1> #打印master
echo 
echo "Run slaveof cmd ..." >> $LOGFILE
$REDISCLI slaveof 10.6.1.144 6379 >> $LOGFILE 2>&1#使用slaveof命令进行主从同步
sleep 10  #延迟10秒以后等待数据同步完成以后再次取消同步状态
echo "Run slaveof no noe cmd .." >> $LOGFILE
$REDISCLI SLAVEOF NO ONE >> $LOGFILE 2>&1



