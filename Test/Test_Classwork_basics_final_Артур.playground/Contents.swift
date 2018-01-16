import Foundation

/*:
 1.
 - Объявите одну константу, обозначающую название нашей планеты
 - Объявите константу, обозначающую среднее расстояние от земли до солнца (примерно 150 млн км)
 - Объявите  константу -- длительность года на земле (примем что она равняется ~365 дней)
 */

let planetName = "планета Земля"

let averageDistance: Double = 150_000_000

let dayInYear: Double = 365

/*:
 2. Выведите в консоль строку "Средняя скорость движения Земли вокруг солнца равняется ххх км/с", где название планеты и скорость движения будут браться из данных объявленных в задании 1
 */

let distanceAroundSun: Double = 2 * 3.14 * averageDistance

print("Средняя скорость движения \(planetName) вокруг солнца равняется \(distanceAroundSun/(dayInYear * 24.0 * 60.0 * 60.0)) км/с")

/*:
 3. Объявите функцию isLikeASun типа Bool, которая будет показывать, что звезда похожа на солнце по Гарвардской спектральной классификации (Солнце относится к типу G)
 */

func isLikeASun(temperature: Int) -> Bool {
    if temperature >= 5000 && temperature <= 6000 {
        return true
    }
    else {
        return false
    }
}

isLikeASun(temperature: 7000)

/*:
 4. Объявите новый тип StarClass, который может принимать одно из значений Гарвардской спектральной классификации
 */

enum StarClass {
    case M
    case K
    case G
    case F
    case A
    case B
    case O
}

/*:
 5. Объявите функцию, которая получет на вход 1 параметр типа Int (температура в кельвинах) и возвращает результат типа StarClass
 */
func starTemperatureClass(temperature: Double) -> StarClass? {
    switch temperature {
    case 2000..<3500:
        return .M
    case 3500..<5000:
        return .K
    case 5000..<6000:
        return .G
    case 6000..<7500:
        return .F
    case 7500..<10000:
        return .A
    case 10000..<30000:
        return .B
    case 30000..<60000:
        return .O
    default:
        return nil
    }
}

starTemperatureClass(temperature: 9999)

/*:
 6. Выведите в консоль результат работы вашей функции для солнца
 */
struct Star {
    var temperaure: Double // temp in K
}

let sun = Star(temperaure: 5778)

starTemperatureClass(temperature: sun.temperaure)

/*:
 7. Напишите функцию, которая получает на вход StarClass и выводит tuple с минимальной и максимальной температурой звезды
 */

func minMaxTemperature(nameOfClass: StarClass) -> (Double, Double) {
    switch nameOfClass {
    case .M:
        return(2000, 3499)
    case .K:
        return(3500, 4999)
    case .G:
        return(5000, 5999)
    case .F:
        return(6000, 7499)
    case .A:
        return(7500, 9999)
    case .B:
        return(10000, 29999)
    case .O:
        return(30000, 60000)
    }
}

print(minMaxTemperature(nameOfClass: .F))

/*:
 8. Напишите функцию, которая получает на вход массив [Double] и возвращает массив [StarClass?], в котором все элементы входного массива рассматриваются как температуры и преобразованы в соотвествующий звездный класс. Если температура лежит за рамками всех определнных классов, то в результирующий массив добавляется nil
 */

func sortClassOfStar(temperature: [Double]) -> [StarClass?] {
    var arrayOfClass = [StarClass?]()
    for value in temperature {
        switch value {
        case 2000..<3500:
            arrayOfClass.append(.M)
        case 3500..<5000:
            arrayOfClass.append(.K)
        case 5000..<6000:
            arrayOfClass.append(.G)
        case 6000..<7500:
            arrayOfClass.append(.F)
        case 7500..<10000:
            arrayOfClass.append(.A)
        case 10000..<30000:
            arrayOfClass.append(.B)
        case 30000..<60000:
            arrayOfClass.append(.O)
        default:
            arrayOfClass.append(nil)
        }
    }
    return arrayOfClass
}

var someTemperature = [1200.0, 3300.0, 4900.0, 9999.0, 25000.0, 59000.0, 73000.0]

sortClassOfStar(temperature: someTemperature)

