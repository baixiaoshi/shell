#!/bin/bash

option=1

case $option in
    1 )
    echo '1'
        ;;
    2 )
    echo '2'
        ;;
    3 )
    echo '3'
        ;;
esac
if [[ 2 -lt 1 ]]; then
    echo 'hello world'
else
    echo 'hello faile'
fi