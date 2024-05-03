#!/bin/bash

function get_date_time() {
    date "+%F %T"
}

function get_active_users() {
    who | awk '{print $1}' | sort | uniq
}

function get_uptime() {
    uptime | awk '{print $3,$4}'
}

echo "Дата и время: $(get_date_time)"
echo "Активные пользователи: $(get_active_users)"
echo "Время работы системы: $(get_uptime)"
