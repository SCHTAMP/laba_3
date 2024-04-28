#!/bin/bash

# Получаем домашний каталог пользователя
home_dir=$(eval echo "$HOME")

# Получаем список файлов и каталогов в домашнем каталоге
files_and_dirs=$(find "$home_dir" -type f -o -type d)

# Вычисляем размер каждого файла и каталога
du_output=$(du -h --max-depth=1 "$home_dir"/*)

# Удаляем первый элемент из списка, который является размером самого каталога
du_output=$(echo "$du_output" | sed '1d')

# Сортируем список по размеру
sorted_files=$(echo "$du_output" | sort -h -r)

# Выводим отсортированный список
echo "$sorted_files"
