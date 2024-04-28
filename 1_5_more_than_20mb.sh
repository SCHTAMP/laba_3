#!/bin/bash

# Путь, который будем сканировать
search_path="/usr"

# Ищем файлы размером больше 20Мб
find "$search_path" -type f -size +20M -print
