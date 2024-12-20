#!/bin/sh

# сценарий удаления файлов, групп и пользователей
# Задание 3.2

path="/srv/dir" #путь к директории

if [[ $# -ne 5 ]]; then #проверка корректности использования скрипта
    echo "Неверное количество аргументов. Использование: group1 group2 user1 user2 user3" && exit 1  
fi

for i in 3 4 5;do
 userdel -r ${!i} #удаление юзеров
done

for i in 1 2; do
 groupdel ${!i} #удаление групп пользователей
 rm -rf "$path$i" #удаление директорий, созданных во время выполнения 1го скрипта
done

