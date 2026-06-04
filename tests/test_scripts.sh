#!/bin/bash

# Подключаем тестируемые скрипты
source ./scripts/addition.sh
source ./scripts/evenodd.sh
source ./scripts/factorial.sh

# Тест сложения
testAddition() {
    result=$(add 5 3)
    assertEquals "5+3=8" "8" "$result"
    
    result=$(add 10 20)
    assertEquals "10+20=30" "30" "$result"
}

# Тест чётности
testEvenOdd() {
    result=$(is_even 4)
    assertEquals "4 - четное" "true" "$result"
    
    result=$(is_even 5)
    assertEquals "5 - нечетное" "false" "$result"
}

# Тест факториала
testFactorial() {
    result=$(factorial 5)
    assertEquals "5!=120" "120" "$result"
    
    result=$(factorial 0)
    assertEquals "0!=1" "1" "$result"
}

# Запуск тестов
. /usr/bin/shunit2
