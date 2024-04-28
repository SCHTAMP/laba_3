#!/bin/bash

# Функция для получения даты и времени
function get_date_time() {
    date "+%F %T"
}

# Функция для получения списка активных пользователей
function get_active_users() {
    who | awk '{print $1}' | sort | uniq
}

# Функция для получения времени работы системы
function get_uptime() {
    uptime | awk '{print $3,$4}'
}

# Вызываем функции и выводим результаты
echo "Дата и время: $(get_date_time)"
echo "Активные пользователи: $(get_active_users)"
echo "Время работы системы: $(get_uptime)"
