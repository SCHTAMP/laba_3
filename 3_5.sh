#!/bin/bash

function sort_and_number_lines {
    grep "$1" "$2" | sort | nl > /tmp/output
    lines_count=$(wc -l < /tmp/output)
    max_lines=$3
    head -n $max_lines /tmp/output
    rm /tmp/output
}

sort_and_number_lines "$1" "$2" "$3"
