#!/bin/sh

# сценарий запуска фоновых процессов
# Задание 4.2

if [ $# -ne 2 ]; then
    echo "Неверное количество аргументов. Использование: adr1 adr2" && exit 1  
fi 

# запускаем 3 целевых процесса
for i in 1 2 3; do ping $1 >/dev/null & done
# запускаем 2 дополнительных процесса
for i in 1 2; do ping $2 >/dev/null & done