#!/bin/bash
#is_alive=`/usr/local/src/redis-3.0.5/src/redis-cli PING`
if [ "$is_alive" == "PONG" ] ;then
	echo "$is_alive"
	exit 0 #为0代表成功
else
	#echo $is_alive
	exit 1 #为1代表失败
fi
