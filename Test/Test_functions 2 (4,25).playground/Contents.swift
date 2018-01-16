/*:
 1.
 - Объявите функцию dublePrint, которая принимает один аргумент типа String и выводит его 2 раза в консоль
 */

func dublePrint(value: String) -> String {
    print("\(value) \(value)")
    return value
}

/*:
 2.
 - Объявите функцию printEquation, которая принимает 3 параметра типа Int, Character и Int
 - функция должна печатать в консоль строку типа математического выражения
 - Прмер для входных параметров 34, "+" и 7 функция напечатает 34 + 7
 */

func printEquation(oneParameterName: Int, twoParameterName: Character, threeParameterName: Int) {
    print("\(oneParameterName) \(twoParameterName) \(threeParameterName)")
}

/*:
 3.
 - Вызовите функции из задания 1 и 2
 */

dublePrint(value: "Hello")

printEquation(oneParameterName: 34, twoParameterName: "+", threeParameterName: 6)


/*:
 4.
 - Объявите функцию, которая получает как параметр String? и выводит true если строка длинная ( больше 10 символов ) и false, если строка nil или короче 10 символов
 - проверьте ее работу на разных входных данных
 */

func lengthString(_ str: String?) -> Bool {
    
    guard let str = str else {
        return false
    }
    if str.count > 10 {
    return true
        
    } else if str.count < 10 {
    return false
    }
    return true
}

lengthString("1234567891011")
lengthString("Artur")
lengthString(nil)

/*:
 5.
 - Объявите функцию, которая вычисляет разницу длин двух строк
 - проверьте ее работу на наскольких примерах
 */

func differenceString(_ one: String, _ two: String) -> Int {
    let n = one.count - two.count
    return n
}

differenceString("Arthur", "Hello")
differenceString("Hi", "Good")

/*:
 6.
 - Объявите функцию, которая считает сумму квадратов всех элементов массива типа [Double]
 - проверьте ее работу на наскольких примерах
 */

/* Сокращенный вариант:
 func sumSquares(_ arr: [Double]) -> Double {
 return arr.reduce(0) { $0 + $1 * $1}
 } */

func sumSquares(_ arr: [Double]) -> Double {
    var N = 0.0
    for value in arr {
        N += value * value
    }
    return N
}

    
var arrOne = [10.0, 10.0, 5.0, 5.0]
var arrTwo = [3.0, 3.0, 7.0, 6.0]

sumSquares(arrOne)
sumSquares(arrTwo)

/*:
 7.
 - Объявите функцию, которая принимает на вход Double и возвращает это число в виде строки и в виде Int одновременно
 */

func doubleInStringInt(_ number: Double) -> (String, Int) {
    let str = String(number)
    let int = Int(number)
    return(str, int)
}

doubleInStringInt(10.0)

/*:
 8.
 - Объявите функцию oddMoney, которая получает на вход два аргумента: цену и наличные. (в центах)
 - Если наличных недостаточно ( < чем цена ), то функция возвращает nil
 - Иначе функция возвращает словарь [Coin : Int], который содержит для каждого типа монет, сколько монет вернуть как сдачу
 - словарь содержит только те монеты для которых нужно вернуть хотя бы одну
 */
enum Coin: Int {
    case penny = 1 // 1 цент
    case nickel = 5 // 5 центов
    case dime = 10 // 10 центов
    case quater = 25 // 25 центов
    case buck = 100 // 100 центов
}

func oddMoney(price: Int, cash: Int) -> [Coin: Int]? {
    var dict = [Coin: Int]()
    if cash < price {
        return nil
    } else {
        
        var change = cash - price
        let coins = [Coin.buck, Coin.quater, Coin.dime, Coin.nickel, Coin.penny]
        for coin in coins {
            let coinsNum = change / coin.rawValue
            if coinsNum > 0 {
                dict.updateValue(coinsNum, forKey: coin)
                change = change - coin.rawValue * coinsNum
            }
        }
    }
    return dict
}



oddMoney(price: 25, cash: 49)
