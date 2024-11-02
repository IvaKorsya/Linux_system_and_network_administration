#!/bin/sh

# сценарий проверки прав пользователей
# Задание 3.2

path="/srv/dir" #путь к директории

su -l user2 -c ' #заходим под нужным пользователем
for i in $(seq 1 2); do
 touch '"$path"'$i/file_u2d$i #создание файла
 whoami && echo "создал(а) файл в каталоге '"$path"'${i}"
done
' #закончили работу под нужным пользователем

su -l user1 -c '
for i in $(seq 1 2); do
 whoami && echo "доступ в каталоге '"$path"'${i}"
 cp '"$path"'$i/file_u2d$i '"$path"'$i/file_u1d$i 
 echo $? #выводим результат выполнения последней команды
done
'

su -l user3 -c '
for i in $(seq 1 2); do
 whoami && echo "доступ в каталоге '"$path"'${i}"
 cp '"$path"'$i/file_u${i}d$i '"$path"'$i/file_u3d$i
 echo $?
done
'
