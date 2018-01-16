/*:
 1.
 - Объявите одну константу x типа Int
 - Объявите переменную y типа Double
 - Объявите  Optional переменную sum типа Int без начального значения
 - Присвойте sum значение равное сумме x и y
 */

let x = 8

var y = 3.5

var sum: Int?

sum = x + Int(y)

/*:
 2. Выведите в консоль строку "x + y =  sum" где sum будет заменено на значение
 */

print("x + y = \(String(describing: sum))")

/*:
 3. Объявите константу isOdd типа Bool, которая будет показывать, что число sum нечетное
 В swift есть опертор отстатка от деления `%`. Смотри ка он работает на следующих двух строках
 */

12 % 2 // вернет 0
13 % 2 // вернет 1 (остаток от деления)

sum = 11

let isOdd: Bool = true

if sum! % 2 == 1 {
    print(isOdd)
} else if sum! % 2 == 0 {
    print(!isOdd)
}

/*:
 4. Объявите новый тип EvenOdd, который будет иметь два возможных значения. Число четное или число нечетное.
 */

enum EvenOdd {
    case even
    case odd
}

/*:
 5. Объявите функцию, которая получет на вход 1 параметр типа Int и возвращает результат типа EvenOdd
 */

sum = 14

func evenOddNumbers(number: Int) -> EvenOdd {
    var value: EvenOdd
    if number % 2 == 1 {
        value = .odd
    } else {
        value = .even
    }
    return value
}

/*:
 6. Выведите в консоль результат работы вашей функции для summ
 */

    print(evenOddNumbers(number: sum!))


/*:
 7. Напишите функцию, которая получает на вход Имя и Фамилию человека и возвращает tuple (String, String) с именем и фамилией
 */

func addPerson (name: String, lastName: String) -> (String, String) {
    let fullName: (String, String) = (name, lastName)
    return fullName
}

print(addPerson(name: "Arthur", lastName: "Obukhovich"))

/*:
 8. Напишите функцию, которая получает на вход массив [String?] и возвращает массив [String], в котором выброшены все nil значения из первого массива
 
 Например из массива
 ["a", nil, "b"] получится массив ["a", "b"]
 */


