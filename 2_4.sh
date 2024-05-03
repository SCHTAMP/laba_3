#!/bin/bash

while read line; do
    if echo "$line" | grep -q 'bin'; then
        echo "$line" >&2
    fi
done
