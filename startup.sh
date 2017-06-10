#!/bin/bash
cd /opt/lnmp/nginx-1.8.1
/opt/lnmp/nginx-1.8.1/sbin/nginx -c /opt/lnmp/nginx-1.8.1/conf/nginx.conf 2>&1 > /dev/null
/opt/php5/sbin/php-fpm 2>&1 > /dev/null
/usr/local/mysql/bin/mysqld_safe & 2>&1 > /dev/null
cd /Users/lion/husor/vagrant/
vagrant up 2>&1 > /dev/null
