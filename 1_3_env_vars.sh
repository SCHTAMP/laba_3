#!/bin/bash

exported_variables=$(set | tr '\n' ' ')
trimmed_variables=${exported_variables// / }
IFS=' ' read -ra variables <<< "$trimmed_variables"
sorted_variables=( $(echo "${variables[@]}" | sort) )

for var in "${sorted_variables[@]}"; do
    echo "$var"
done
