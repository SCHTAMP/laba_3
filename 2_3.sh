#!/bin/bash

# Путь к исходному файлу
INPUT_FILE="./bash.txt"


# Используем grep для фильтрации строк и сохранения их в соответствующие файлы
grep -E '0{6}' "$INPUT_FILE" > /tmp/zeros
grep -v -E '0{6}' "$INPUT_FILE" > /tmp/nozeros

# Выводим первые и последние 10 строк из каждого файла
echo "Zeros: "
head -n 10 /tmp/zeros
echo ""
tail -n 10 /tmp/zeros

echo "Nozeros: "
head -n 10 /tmp/nozeros
echo ""
tail -n 10 /tmp/nozeros
