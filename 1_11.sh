#!/bin/bash

# Функция для вывода информации о каталогах
function print_directories() {
    find . -type d -print0 | xargs -0 ls -ld --time-style=long-iso
}

# Функция для вывода информации об обычных файлах
function print_regular_files() {
    find . -type f -print0 | xargs -0 ls -l --time-style=long-iso
}

# Функция для вывода информации о символьных ссылках
function print_symbolic_links() {
    find . -type l -print0 | xargs -0 ls -l --time-style=long-iso
}

# Функция для вывода информации о символьных устройствах
function print_character_devices() {
    find . -type c -print0 | xargs -0 ls -l --time-style=long-iso
}

# Функция для вывода информации о блочных устройствах
function print_block_devices() {
    find . -type b -print0 | xargs -0 ls -l --time-style=long-iso
}

# Вызываем функции в нужном порядке
echo "Каталоги:"
print_directories
echo "Обычные файлы:"
print_regular_files
echo "Символьные ссылки:"
print_symbolic_links
echo "Символьные устройства:"
print_character_devices
echo "Блочные устройства:"
print_block_devices
