//: Playground - noun: a place where people can play

import UIKit

//1. Напишите функцию, которая получает на вход целое чисол и возвращает Bool если оно четное

func isEven(a: Int) -> Bool {
    if a % 2 == 0 {
        return true
    }
    return false
}

// isEnev(10) ??



//2. Числа фибоначи — элементы числовой последовательности
//0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711,
//в которой первые два числа равны либо 1 и 1, либо 0 и 1, а каждое последующее число равно сумме двух предыдущих чисел.
//
// Напишите функцию, которая получает на вход номер числа фибоначи и выводит на выход его значение



//3. Напишите функцию, которая выводит самое большое четное число в массиве


//4. Напишите функцию, которая принимает на вход расстояние и еденицу измерения (метры, километры, мили, ярды) и другую еденицу измерения в которую надо конвертировать значение. И возвращает расстояние в новых единицах измерения.

//5. Объявите класс City с property -- количество населения, страна, название
// Напишите функцию которая выводит названиея городдов сгруппированные по странам и отсортированные по убыванию населения
// Пример: [{Минск, 1700000, РБ}, {Новосибирск, 1200000, РФ}, {Кировск, 45000, РФ}, {Борисов, 120000, РБ}]
// Вернет [[Минск, Борисов],[Новосибирск, Кировск]]

