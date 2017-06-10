#!/bin/bash

function main() {
    test_param 'a' 'b' 'c' 'd'
}

function test_param() {
    echo $@
    my_test $@
}

function my_test() {
    echo $1
}
main