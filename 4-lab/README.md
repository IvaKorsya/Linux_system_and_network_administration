Задание 4.2
1. В этом задании необходимо создать четыре сценария на языке командного
интерпретатора.:
стартовый (подготовительный) задает рабочую среду;
первый (основной) выполняет задание;
второй (тестовый) проверяет правильность работы основного;
третий (обнуляющий) возвращает систему в исходное состояние так,
чтобы можно было запустить процесс выполнения сценариев сначала.
2. Задача стартового сценария задания:
запустить в фоновом режиме 5 процессов;
3 из которых являются целевыми, а 2 — дополнительными.
Для примеров фоновых процессов можно выбрать ping ya.ru и ping yandex.ru.
3. Основной сценарий должен прекратить выполнение только целевых процессов.
4. Тестовый сценарий должен сообщать сколько целевых и дополнительных процессов
выполняется в данный момент.
5. Для возврата к начальным условиям необходимо прекратить выполнение всех
запущенных процессов
В качестве самостоятельного задания разработайте аналогичные сценарии, изменив их так,
чтобы адреса сайтов (целевого и дополнительного) задавались как параметры при запуске
сценария. Должна проводиться проверка количества передаваемых параметров. 