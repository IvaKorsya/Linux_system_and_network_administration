#!/bin/sh
# сценарий записи информации о слушателе в файл
# Задание 1.2
touch my_file # создание файла

echo "korsya eva" > my_file #запись фамилии и имени слушателя
date >> my_file # запись даты и времени
echo "date" >> my_file #запист слова date

