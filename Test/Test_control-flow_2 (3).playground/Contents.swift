import Foundation

/*:
 *1)*
 Напишите функцию errorMessage, которая получает на вход аргумент типа Error (не TestError!!) и выводит ее описание в консоль если ошибка принадлежит одному из вариантов TestError
 Если ошибки нет среди элементов enum, то выводится "Error, something went wrong"
 */
enum TestError: Error {
    case one
    case two
    case three
    
    var localizedDescription: String {
        switch self {
        case .one:
            return NSLocalizedString("one", comment: "one error")
        case .two:
            return NSLocalizedString("two", comment: "two error")
        case .three:
            return NSLocalizedString("three", comment: "three error")
        }
    }
}

func errorMessage(error: Error) {
    switch error {
    case TestError.one:
        print("one error")
    case TestError.two:
        print("two error")
    case TestError.three:
        print("three error")
    default:
        print("something gone wrong")
    }
}

errorMessage(error: TestError.three)


/*:
*2)*
 - Объявите и выполните функцию которая принимает массив typle типа (Int, Int) и операцию Operation и возвращаетм массив Int
Если операция plus , то элементы выходного массива будут равны сумме двух элементов каждого tuple из входного массива
Если операция minus, то элементы выходного массива будут равны разности элеменов tuple
 */
enum Operation {
    case plus, minus
}

func plusMinus(tuple: [(Int,Int)], operation: Operation) -> [Int] {
    var arrayOfTuple = [Int]()
    switch operation {
    case .plus:
        for (numOne, numTwo) in tuple {
            arrayOfTuple.append(numOne + numTwo)
        }
    case .minus:
        for (numOne, numTwo) in tuple {
            arrayOfTuple.append(numOne - numTwo)
    }
 }
    return arrayOfTuple
}


plusMinus(tuple: [(50, 20)], operation: .minus)
plusMinus(tuple: [(50, 20)], operation: .plus)

/*:
 *3)*
Выведите все строки короче 10 сиволов, которые начинаются на "a" или "A" и все строки начинающиеся на b или "B"
 */
let strings = ["adfkjsd", "Akdsfjkdfjldfjk", "bdkk", "kaf", " afurl", "ABBA", "ABBBBBBBBBBBBBBBBA", "no", "1234566dkjdksdjksd", "bbbbbbbbbbbbbbbbbbbb", "Ваc?"]

func addItem(array: [String]) {
    var tenСharacters = [String]()
    for item in strings {
        if (item.count < 10 && item.hasPrefix("a")) || (item.count < 10 && item.hasPrefix("A")) || item.hasPrefix("b") || item.hasPrefix("В") {
            tenСharacters.append(item)
        }
    }
    print(tenСharacters)
}

print(addItem(array: strings))

/*:
 *4)*
 У вас есть 3 банкноты: x, y и z рубля.
 напишите функцию, которая получает сумму и возвращает Bool
 true если сумма может быть набрана из ваших банкнот
 false если нет
 Функция должна работать при любых целых положительных x, y и z
 */
let x = 10
let y = 5
let z = 2

//func amount(sum: Int ) -> Bool {
//    if let b = x + y + z {
 //   }
// }


/*:
 *5)*
Напишите функцию, которая проверяет что треугольник является равносторонним и возвращает соотвественно true или false
 */
struct Triangle {
    let AB: Double
    let BC: Double
    let CA: Double
}

func equilateralTriangle(side: Triangle) -> Bool {
    if side.AB == side.BC && side.BC == side.CA && side.CA == side.AB {
        return true
    }
    return false
}

/*:
 *6)*
 Напишите функцию, которая выводит из словаря [Triangle : Double] площади всех равносторонних треугольников.
 Значения в словаре и есть площади треугольников
 */

/*:
 *7)*
 Выведите количество строк в массиве [String], которые содержат цифры.
 */

func numbersInString(_ arr: [String]) -> Int {
    var value = 0
    for item in arr {
        if item.contains("1") || item.contains("2") || item.contains("3") || item.contains("4") || item.contains("5") || item.contains("6") || item.contains("7") || item.contains("8") || item.contains("9") || item.contains("0") {
            value += 1
        }
    }
    return value
}

var yearNumb = ["1999", "2000", "XXI", "2015", "XVI"]

print(numbersInString(yearNumb))


/*:
 *8)*
 Сервер выполняет резервное копирование если в данный момент нет готовых (isReady) задач (Task) в очереди на выполнение (tasks)
 Если копирование не выполнялось более 10 дней, то копирование стартует независимо от наличия задач в очереди
 Напишите функцию, которая будет проверять можно ли запустить сейчас резервное копирование.
 */
struct Task {
    var isReady: Bool
}

struct Server {
    var tasks: [Task]
    let lastCopyDate: Date
    var timePassed: TimeInterval { //Время в секундах
        return lastCopyDate.timeIntervalSince(Date())
    }
    
    func shouldPerformBackup() -> Bool {
        //write code here
        return false // TODO: remove when implemented
    }
}
