#!/bin/sh

# сценарий создания групп пользователей
# Задание 3.2

path="/srv" #путь к директории

if [[ $# -ne 5 ]]; then #проверка корректности использования скрипта
    echo "Неверное количество аргументов. Использование: group1 group2 user1 user2 user3" && exit 1  
fi

for i in 1 2; do
 groupadd ${!i} #создание групп
done

for i in 3 4 5; do
 adduser ${!i} #создание пользователей
done

gpasswd -a $3 $1 && gpasswd -a $4 $1 && gpasswd -a $4 $2 && gpasswd -a $5 $2 #добавление соот. пользователей в соот. группы

for i in 3 4 5; do
 echo "user$i: "
 id ${!i} #иформация о пользователе
done

for i in 1 2; do
 mkdir "$path"/dir$i #создание каталогов
 chgrp ${!i} "$path"/dir$i #присваивание каталогов группам
 chmod 2775 "$path"/dir$i #выдача прав на запись
done

ls -la "$path"


