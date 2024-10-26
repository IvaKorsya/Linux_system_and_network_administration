#!/bin/sh

# сценарий создания и монтирования ФС
# Задание 2.2

truncate -s 2M /tmp/my_sys_2M.img # файл заданного размера
mkfs.ext2 /tmp/my_sys_2M.img # созд. ФС ext2
mkdir /mnt/new_disk # созд.точку монтирования
mount /tmp/my_sys_2M.img /mnt/new_disk # монтируем ФС
df -H /mnt/new_disk #информация о ФС
mkdir /mnt/new_disk/new_dir && cd /mnt/new_disk/new_dir #создание новой директории для заполнения и переход в нее
j=1; while [ $j -le 4 ]; do echo file_$j && dd if=/dev/zero of=/mnt/new_disk/new_dir/file_$j bs=512K count=1 2>/dev/null; j=$[j+1]; done #заполняем ФС по объему
