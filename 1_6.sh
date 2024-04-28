#!/bin/bash

# Получаем домашний каталог текущего пользователя
home_dir=$(eval echo "$HOME")

# Считаем общее количество файлов и скрытых файлов
total_files=$(find "$home_dir" -type f | wc -l)
hidden_files=$(find "$home_dir" -type f -a -name '.??*' | wc -l)

# Выводим результат в требуемом формате
echo "Домашний каталог пользователя $USER содержит:"
echo "обычных файлов: $total_files"
echo "скрытых файлов: $hidden_files"
