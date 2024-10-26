#!/bin/sh

# сценарий удаления ФС
# Задание 2.2

disk_path="/mnt/new_disk" #путь к ФС
file_path="/tmp/my_sys_2M.img" #путь к файлу
cd "$disk_path" && rm -rf * # удаляем файлы, перейдя в ФС
umount -l "$disk_path"  #размонтируем ФС
rm "$file_path"  # удаляем файл
cd ../../ && rmdir "$disk_path" #выходим из текущей директории и удаляем ее
