#!/bin/bash

home_dir=$(eval echo "$HOME")
files_and_dirs=$(find "$home_dir" -type f -o -type d)
du_output=$(du -h --max-depth=1 "$home_dir"/*)
du_output=$(echo "$du_output" | sed '1d')
sorted_files=$(echo "$du_output" | sort -h -r)

echo "$sorted_files"
