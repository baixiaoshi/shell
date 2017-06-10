#!/bin/bash
test_path=/Users/lion/wwwroot/shell/test.txt
cat $test_path |awk '{
    print $0


}'