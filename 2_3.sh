#!/bin/bash

INPUT_FILE="./bash.txt"

grep -E '0{6}' "$INPUT_FILE" > /tmp/zeros
grep -v -E '0{6}' "$INPUT_FILE" > /tmp/nozeros

echo "Zeros: "
head -n 10 /tmp/zeros
echo ""
tail -n 10 /tmp/zeros

echo "Nozeros: "
head -n 10 /tmp/nozeros
echo ""
tail -n 10 /tmp/nozeros
