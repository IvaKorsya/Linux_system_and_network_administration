#!/bin/sh

# сценарий проверки прав пользователей
# Задание 3.2

path="/srv/dir" #путь к директории

if [[ $# -ne 5 ]]; then #проверка корректности использования скрипта
    echo "Неверное количество аргументов. Использование: group1 group2 user1 user2 user3" && exit 1  
fi

su -l $4 -c ' #заходим под нужным пользователем
for i in 1 2; do
 touch '"$path"'$i/file_u2d$i #создание файла
 whoami && echo "создал(а) файл в каталоге '"$path"'${i}"
done
' #закончили работу под нужным пользователем

su -l $3 -c '
for i in 1 2; do
 whoami && echo "доступ в каталоге '"$path"'${i}"
 cp '"$path"'$i/file_u2d$i '"$path"'$i/file_u1d$i 
 echo $? #выводим результат выполнения последней команды
done
'

su -l $5 -c '
for i in 1 2; do
 whoami && echo "доступ в каталоге '"$path"'${i}"
 cp '"$path"'$i/file_u${i}d$i '"$path"'$i/file_u3d$i
 echo $?
done
'
