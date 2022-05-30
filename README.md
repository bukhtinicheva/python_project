# Проектное задание
Любой системный администратор ежедневно решает большое количество разнообразных задач, призванных «облегчить жизнь» как ему самому, так и пользователям.
Пришло время и нам сделать это.
## Цель работы 
Создание скрипта, который будет полезен в работе системным администратором. Анализ и сравнение реализации на python и bash.
## Задачи 
1) Разработать идею скрипта
2) Составить краткую теоретическую справку
3) Реализовать скрипт на python и bash
4) Сформулировать выводы по проделанной работе 
## Что делает скрипт?
Скрипт принимает именованные аргументы: название папки и слово,которое нужно найти. Программа проходится по всем файлам и **возвращает количество** искомого слова в них. Пользователь с помощью дополнительного аргумента выбирает, где именно программа ищет введеное слово: в содержании или названиях файлов. 
## Теоретическая справка
**Bash**- наиболее часто используемая командная оболочка по умолчанию в операционных системах GNU/Linux. Она включает в себя простой язык программирования, который позволяет при помощи условных операторов и операторов цикла использовать утилиты и программы операционной системы для написания как простых, так и сложных скриптов.

**Python** - является полноценным объектно-ориентированным языком программирования. Он входит в состав большинства распространенных дистрибутивов GNU/Linux, что позволяет использовать его в качестве альтернативной основы для написания скриптов, решающих задачи системного администрирования.

Почему bash?

1.Универсальность и доступность \
2.Не требуется установка дополнительных пакетов \
3.Средство автоматизации работы с файлами и утилитами 

Почему python?

1.Удобочитаемость и компактность кода \
2.Наличие большого количества модулей, подключаемых с помощью оператора import: экономится время, а скрипт выглядит более структурированным \
3.Скрипты Python работают и в среде Windows, и в MacOS, и в UNIX, включая FreeBSD и GNU/Linux 

**Таким образом**, python является полноценным скриптовым языком, предпочтение в его использовании отдаётся специфическим задачам или тем, для решения которых возможностей bash недостаточно. В решении же повседневных задач выбор нередко падает на bash по причине его универсальности и доступности. Однако преимущество python в его удобстве и большей функциональности. 

## Запуск скриптов
**Python:** \
1)Запустить скрипт с помощью команды ``` python3 script.py ```

**Bash:** \
1)Выдать права на исполнение файла с помощью команды ``` chmod +x script.sh  ``` \
2)Запустить скрипт с помощью команды ``` ./ script.sh ```
