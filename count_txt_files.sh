#!/bin/bash

# Функция для подсчета количества файлов с расширением .txt
function count_txt_files() {
    local count=0
    for file in "$HOME"/*; do
        if [[ -f "$file" && ${file##*.} == "txt" ]]; then
            let count++
        fi
    done
    echo "$count"
}

# Вызов функции и вывод результата
echo "Количество файлов .txt в домашнем каталоге: $(count_txt_files)"
