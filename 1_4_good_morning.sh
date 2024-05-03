#!/bin/bash

user="$(whoami)"

function print_time_and_calendar() {
    date "+%H:%M %A, %B %d, %Y"
   (cal -C)
}

function print_todo_list() {
    if [ -f "$HOME/TODO" ]; then
        cat "$HOME/TODO"
    else
        echo "Файл TODO не найден в домашнем каталоге."
    fi
}

echo "Доброе утро, $user!"
print_time_and_calendar
print_todo_list
