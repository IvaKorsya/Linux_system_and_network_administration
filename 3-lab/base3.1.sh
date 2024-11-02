#!/bin/sh

# сценарий создания групп пользователей
# Задание 3.1

path="/srv"

for i in $(seq 1 2); do
 groupadd group$i
done

for i in $(seq 1 3); do
 adduser user$i
done

gpasswd -a user1 group1 && gpasswd -a user2 group1 && gpasswd -a user2 group2 && gpasswd -a user3 group2

for i in $(seq 1 3); do
 echo "user$i: "
 id user$i
done

for i in $(seq 1 2); do
 mkdir "$path"/dir$i
 chgrp group$i "$path"/dir$i
 chmod 2775 "$path"/dir$i
done

ls -la /srv
