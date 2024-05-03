#!/bin/bash 

md5sum *.txt | sort | uniq -c -w32 | sort -nr | awk '{print $1, $3}'

