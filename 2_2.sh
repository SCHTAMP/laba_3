#!/bin/bash

# Запускаем сценарий из предыдущего задания
./previous_script.sh &> /dev/null &

# Открываем журнал запусков в программе less
less /tmp/run.log
