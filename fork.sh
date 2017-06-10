#!/bin/bash

PIDS=`ps -ef |grep myprocess |grep -v grep | awk '{print $2}'`
if [ "$PIDS" != "" ]; then
kill -9 $PIDS
cd /root/myprocess
sudo ./myprocess
else
cd /root/myprocess
sudo ./myprocess
fi
