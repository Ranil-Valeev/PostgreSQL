#!/bin/bash

# Ввод дня проекта
read -p "Введите номер дня проекта (например: day_??): " day_num

# Ввод диапазона ex
read -p "Начать с ex (например: 00): " start_ex
read -p "Закончить ex (например: 05): " end_ex

# Создаем папки и файлы
for i in $(seq -w $start_ex $end_ex); do
    folder="ex0${i}"
    mkdir -p "$folder"
    
    # Создаем SQL файл с day в имени
    sql_file="${folder}/day${day_num}_ex0${i}.sql"
    touch "$sql_file"
    
    echo "Создано: $folder/day${day_num}_ex${i}.sql"
done

echo "Готово! Созданы папки: ex${start_ex} до ex${end_ex}"