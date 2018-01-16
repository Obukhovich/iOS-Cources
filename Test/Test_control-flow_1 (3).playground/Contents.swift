import Foundation

/*:
 *1)*
 - Объявите и выполните функцию numberOfBorders, которая принимает строку и выводит в консоль
 - "3" для "triangle"
 - "4" для "rect", "rectangle", "square"
 - "5" для "pentagon"
 */

func numberOfBorders(borders: String) {
    switch borders {
    case "triandle":
        print("3")
    case "rect", "rectangle", "square":
        print("4")
    case "pentagon":
        print("5")
    default: break
    }
}

numberOfBorders(borders: "rectangle")
numberOfBorders(borders: "pentagon")

/*:
*2)*
 - Объявите и выполните функцию которая принимает массив строк и возвращает 2 массива
 - в одном только строки длинее 10 символов
 - в другом строки 10 символов и меньше
 */

func tenCharacter(arr: [String]) -> ([String], [String]) {
    
    var moreTen = [String]()
    var lessTen = [String]()
    
    for value in arr {
        if value.count > 10 {
            moreTen.append(value)
        } else if value.count <= 10 {
            lessTen.append(value)
        }
    }
    return (moreTen, lessTen)
}

print(tenCharacter(arr: ["Hello", "Popular repositories", "Hi", "Money", "Car", "Pull requests"]))
    
/*:
 *3)*
 - Напишите двумя способами код, который проверяет есть ли в массиве [Int?] элементы равные nil и записывает это в Bool переменную
 */

//1

func nilInArray(arr: [Int?]) -> Bool {
    for item in arr {
        if item == nil {
            return true
        }
    }
    return false
}

nilInArray(arr: [1, 2, 3, 4, 5, nil])

// 2

var array : [Int?] = [10, 20, 30, 40, 50, nil]
var haveNil : Bool = true

for N in array {
    if N == nil {
        haveNil = true
    } else {
        haveNil = false
    }
}

print(haveNil)




/*:
 *4)*
 
 Участвовать в студенческом чемпионате мира могут студенты и аспиранты, а так же те, кто закончил обучение в текущем году
 При этом возраст участника не должен превышать 27 лет.
 
 Напишите функцию canAttend(champYear: Int) для сруктуры Athlete, которая вернет true если атлет может быть участником чемпионата
 в году champYear. И false, если нет
 */
struct Athlete {
    let age: Double
    let isStudent: Bool
    let isAspirant: Bool
    let graduationYear: Int?
}


/*:
 *5)*
 
 Напишите 2 функции
 1-ая получет на вход Int номер месяца в году и возвращет Season?
 2-ая для получает на вход Season и выводит в консоль названия месяцев в данной поре года
 */
enum Season {
    case spring
    case summer
    case autumn
    case winter
}

func seasons(month: Int) -> Season? {
        switch month {
        case 12, 1, 2:
            return .winter
        case 3, 4, 5:
            return .spring
        case 6, 7, 8:
            return .summer
        case 9, 10, 11:
            return .autumn
        default: break
        }
        return Season.winter
    }
    
seasons(month: 3)

 func nameOfSeason(season: Season) {
    switch season {
    case .winter:
        print("December","January","February")
    case .spring:
        print("March","April","May")
    case .summer:
        print("June","July","August")
    case .autumn:
        print("September","October","November")
    }
}

nameOfSeason(season: Season.summer)

/*:
 *6)*
 
 Rect -- прямоугольник стороны которого параллельны осям x и у
 
 - Допишите функцию intersects() у Rect, которая получает на вход Rect
 и возвращает true если у self и прямоугольника есть общие точки или false, если общих точек нет
 
 Создайте несколько прямоугольников и проверьте работу функции на них.
 */
struct Rect {
    let x: Double
    let y: Double
    let width: Double
    let height: Double
    
    
    func intersects(_ rect: Rect) -> Bool {
        let secondRect = self
        
        let secondMaxX = secondRect.x + secondRect.width
        let firstMaxX = rect.x + rect.width
        let secondMaxY = (secondRect.y + secondRect.height)
        let firstMaxY = rect.y + rect.width
        
        if (rect.x < secondMaxX && firstMaxX > secondRect.x) &&
            (rect.y < secondMaxY && firstMaxY > rect.y) {
            return true
        }
        return false }
}

