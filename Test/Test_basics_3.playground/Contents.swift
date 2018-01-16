import Foundation
import UIKit

/*:
 1.
 - Объявите константу обозначающую год появления РБ как независимого государства
 - Объявите константу обозначающую население Беларуси на тот момент
 - Объявите константу обозначающую текущее население Беларуси
 
 */

let createReruplicOfBelarus = 1991
let populationOf1991 = 10_000_000
let populationOf2018 = 9_500_000

/*:
 2. Выведите в консоль строку описывающую скорость изменения численности населения Беларуси
 */

let nowYear = 2018
let timeOExistenceState = nowYear - createReruplicOfBelarus

let speedOfChangePopulation = (populationOf1991 - populationOf2018) / timeOExistenceState

print("Скорость изменения численности населения РБ составляет \(speedOfChangePopulation) в год.")

/*:
 3. В iOS SDK есть класс UIColor описывающий цвета. Объявите переменную типа цвет
 Один из инициализаторов UIColor имеет вид UIColor(red: 0.5, green: 0.3, blue: 0.2, alpha: 1), где RGB компоненты -- числа от 0 до 1, а alpha задает уровень прозрачности от 0 -- прозрачно до 1 -- непрозрачный цвет
 Напишите функцию, которая проверяет является ли цвет черным (UIColor поддерживает протокол Equatable)
 Проверьте ее работу
 
 */



/*:
 4. Объявите новый тип ColorTuple, который является tuple из четырех компонентов (3 для цвета и один для прозрачности)
 Объявите переменную myColor типа ColorTuple?
 Задайте ей значение
 */

typealias ColorTuple = (colorName: String, colorRal: Int, colorRating: Int, transparent: Int)

var myColor: ColorTuple? = (colorName: "brown", colorRal: 8017, colorRating: 10, transparent: 90)

/*:
 5. Объявите функцию, которая получет на вход 1 параметр типа ColorTuple? и возвращает результат типа UIColor.
 Если входной параметр nil возвращайте белый цвет (UIColor.white)
 */
/*
func color(colorRal: Int) -> UIColor {
    switch colorRal {
    case 8017:
        UIColor.brown
    case 7017:
        UIColor.darkGray
    case nil:
        UIColor.white
    }
}
*/

/*:
 6. Выведите в консоль четные числа от 2 до 2000
 */

for item in 2...2000 {
    if item % 2 == 0 {
        print(item)
    }
}


/*:
 7. Напишите функцию, которая получает на вход ColorTuple и возвращает самый яркий компонент (Red, Green или Blue)
 */

/*:
 8. Напишите функцию, которая получает на вход массив [ColorTuple] и возвращает массив [UIColor], в котором содержатся только "чистые цвета"
 под чистыми цветами понимаются цвета, у которых 2 компонента равны 0. А так же белый и черный цвета.
 Значение alpha не важно
 */

