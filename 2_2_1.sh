#!/bin/bash

# Получаем текущую дату и время
current_time=$(date +"%Y-%m-%d %H:%M:%S")

# Добавляем строку с датой и временем в конец журнала
echo "$current_time" >> /tmp/run.log

# Выводим "Hello, World!" в стандартный вывод
echo "Hello, World!"

# Подсчитываем количество строк в журнале
lines_count=$(wc -l < /tmp/run.log)

# Выводим количество строк в стандартный вывод ошибок
echo "$lines_count" >&2

less /tmp/run.log
