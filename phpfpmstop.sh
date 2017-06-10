#!/bin/bash
sudo /bin/kill `ps -ef |grep php-fpm | awk 'NR ==1 {print $2}'`
