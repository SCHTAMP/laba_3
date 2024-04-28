#!/bin/bash

# Функция для вывода текущего времени и календаря на текущий месяц
function print_time_and_calendar() {
    date "+%H:%M %A, %B %d, %Y"
   (cal -C)
}

# Функция для вывода списка дел из файла TODO
function print_todo_list() {
    if [ -f "$HOME/TODO" ]; then
        cat "$HOME/TODO"
    else
        echo "Файл TODO не найден в домашнем каталоге."
    fi
}

user="$(whoami)"

# Пожелание доброго утра
echo "Доброе утро, $user!"

# Вывод текущего времени и календаря
print_time_and_calendar

# Вывод списка дел из файла TODO
print_todo_list
