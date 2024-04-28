#!/bin/bash

# Получаем идентификатор текущего пользователя
current_user=$(id -un)

# Получаем идентификатор пользователя root
root_user="root"

# Вычисляем количество процессов, запущенных от имени текущего пользователя
current_processes=$(ps -u $current_user -o pid= | wc -w)

# Вычисляем количество процессов, запущенных от имени пользователя root
root_processes=$(ps -u $root_user -o pid= | wc -w)

# Выводим результаты
echo "Процессов пользователя $current_user: $current_processes"
echo "Процессов пользователя root: $root_processes"
