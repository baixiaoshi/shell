#!/bin/bash
PHP_PATH=/Users/lion/wwwroot/C/two_c/src
cd $PHP_PATH/ext/lion
sudo make clean
sudo /usr/local/phpdebug/bin/phpize --clean
sudo /usr/local/phpdebug/bin/phpize
sudo ./configure --with-php-config=/usr/local/phpdebug/bin/php-config --enable-debug
sudo make -j 2
sudo make install
