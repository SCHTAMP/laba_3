#!/bin/bash

current_time=$(date +"%Y-%m-%d %H:%M:%S")
echo "$current_time" >> /tmp/run.log
echo "Hello, World!"
lines_count=$(wc -l < /tmp/run.log)
echo "$lines_count" >&2
