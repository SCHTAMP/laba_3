#!/bin/bash

current_user=$(id -un)
root_user="root"
current_processes=$(ps -u $current_user -o pid= | wc -w)
root_processes=$(ps -u $root_user -o pid= | wc -w)

echo "Процессов пользователя $current_user: $current_processes"
echo "Процессов пользователя root: $root_processes"
