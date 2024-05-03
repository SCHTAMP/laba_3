#!/bin/bash

function count_txt_files() {
    local count=0
    for file in "$HOME"/*; do
        if [[ -f "$file" && ${file##*.} == "txt" ]]; then
            let count++
        fi
    done
    echo "$count"
}

echo "Количество файлов .txt в домашнем каталоге: $(count_txt_files)"
