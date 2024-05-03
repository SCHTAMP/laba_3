#!/bin/bash

function print_directories() {
    find . -type d -print0 | xargs -0 ls -ld --time-style=long-iso
}

function print_regular_files() {
    find . -type f -print0 | xargs -0 ls -l --time-style=long-iso
}

function print_symbolic_links() {
    find . -type l -print0 | xargs -0 ls -l --time-style=long-iso
}

function print_character_devices() {
    find . -type c -print0 | xargs -0 ls -l --time-style=long-iso
}

function print_block_devices() {
    find . -type b -print0 | xargs -0 ls -l --time-style=long-iso
}

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
