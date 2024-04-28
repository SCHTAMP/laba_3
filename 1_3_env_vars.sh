#!/bin/bash

# Получаем все переменные окружения
exported_variables=$(set | tr '\n' ' ')

# Удаляем пробелы в начале и конце каждой переменной
trimmed_variables=${exported_variables// / }

# Разделяем переменные по пробелам и удаляем лишние пробелы
IFS=' ' read -ra variables <<< "$trimmed_variables"

# Сортируем массив переменных
sorted_variables=( $(echo "${variables[@]}" | sort) )

# Выводим отсортированный список переменных
for var in "${sorted_variables[@]}"; do
    echo "$var"
done
