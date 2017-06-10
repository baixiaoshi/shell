#!/bin/bash


function main() {
    `test 1`
    echo $?
}

function test_return() {
    return -1
}

main
