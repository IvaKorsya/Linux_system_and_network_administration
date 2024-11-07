#!/bin/sh

# Сценарий очистки
# Задание 4.2

# прекращаем все процессы из Задания 4.2
if [ $# -ne 2 ]; then
    echo "Неверное количество аргументов. Использование: adr1 adr2 или adr1" && exit 1
fi

for p in `pgrep -f "ping $1"`;do
	kill $p
done

for p in `pgrep -f "ping $2"`;do
	kill $p
done

