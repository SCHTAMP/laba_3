#!/bin/bash

home_dir=$(eval echo "$HOME")
total_files=$(find "$home_dir" -type f | wc -l)
hidden_files=$(find "$home_dir" -type f -a -name '.??*' | wc -l)

echo "Домашний каталог пользователя $USER содержит:"
echo "обычных файлов: $total_files"
echo "скрытых файлов: $hidden_files"
