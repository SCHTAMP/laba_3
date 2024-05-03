#!/bin/bash

TXT_FILES=$(find $HOME -name "*.txt")

printf '%s\n' "${TXT_FILES}"

TOTAL_SIZE=0
for FILE in ${TXT_FILES}; do
    SIZE=$(stat --format=%s "$FILE")
    TOTAL_SIZE=$((TOTAL_SIZE+SIZE))
done

printf '%s\n' "Total size: $TOTAL_SIZE bytes"

TOTAL_LINES=0
for FILE in ${TXT_FILES}; do
    LINES=$(cat "$FILE" | wc -l)
    TOTAL_LINES=$((TOTAL_LINES+LINES))
done

printf '%s\n' "Total lines: $TOTAL_LINES"
