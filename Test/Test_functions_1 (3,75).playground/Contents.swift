/*:
 1.
 - Объявите функцию Test, которая печатет в консоль строку "Test functions, task 1 passed"
 */

func test() {
    print("Test functions, task 1 passed")
}

/*:
 2.
 - Объявите функцию Test, которая принимает один аргумент challenge типа Int
 - функция должна печатать в консоль строку "Test functions, task N passed", где N -- значение аргумента
 - Прмер если challenge = 2 функция выведет в консоль "Test functions, task 2 passed"
 */

func test(challenge: Int) {
    let N = challenge
    print("Test functions, task \(N) passed" )
}

/*:
 3.
 - Вызовите функции из задания 1 и 2
 */

test()
test(challenge: 4)

/*:
 4.
 - Объявите функцию checkMinMax, которая принимает 2 именованых аргумента типа Double min и max и возвращает true если min < max
 */

func checkMinMax(min: Double ,max: Double) -> Bool {
    return min < max
}

/*:
 5.
 - Объявите функцию meanValue, которая принимает 2 неименованых аргумента типа Double и возвращает их среднее значение
 */
     
func meanValue(_ one: Double, _ two: Double) -> Double {
    return (one + two) / 2
}

/*:
 6.
 - Объявите функцию meanValue, которая принимает 1 аргумент типа [Int] и возвращает среднее значение всех элементов массива
 */

func meanValue(array: [Int] ) -> Int {
    return array.reduce(0,+) / array.count
}

/*:
 7.
 - Объявите функцию validPerson, которая принимает на вход имя, фамилию, возраст человека и возвращает строку "FirstName LastName, возраст N лет"
 - При этом имя и фамилия должны быть длинее 1 символа, а возраст от 0 до 200 лет. Иначе выводится nil
 - Напечатайте в консоль результат работы функции для. Ю Сянь, которому 20 лет и Иванова Сергея, которому 34 года 
 */



/*:
 8.
 - Объявите функцию createColor(string:, defaultColor:) которая преобразует строку в цвет, если название строки совпадает с цветом, который есть в enum Colors. если же такого цвета нет, то возвращается defaultColor nbgf Colors. При этом defaultColor имеет значение по умолчанию равное Colors.black
 */
enum Colors {
    case red
    case black
    case green
}

func createColor(string: String, defaultColor: Colors = .black ) -> Colors {
    switch string {
    case "red":
        return .red
    case "green":
        return .green
    case "black":
        return .black
    default:
        print("defaultColor nbgf Colors")
    }
    return defaultColor
}
createColor(string: "blue")
