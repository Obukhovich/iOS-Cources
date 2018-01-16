/*:
 1.
 - Объявите одну константу width типа Double со значением 1
 - Объявите переменную perimeter типа Double со значением 12
 - Объявите константу height, со значением высоты стороны прямоугольника с цириной равной
 width и периметром = perimeter
 */

let widtgt: Double = 1

var perimeter: Double = 12

let height = perimeter / widtgt

/*:
 2.
 - подберите подходящее определение (константа или переменная и тип данных) для
 - год проведения первых олимпийских игр (1896)
 - вероятность выпадения осадков в ближайшие 3 часа
 - ваше имя и возраст
 */

// Int
let firstOlympicGames = 1896


// Bool
var rainForThreeHours = true

if rainForThreeHours {
    print("rain")
} else {
    print ("sunny")
}


// String + Int
var student = ("Arthur", 25)

var (name, age) = student

name
age


/*:
 3.
 - Объявите переменную Optional(Array) содержаший как элементы tuple из имени (String) и профессии (Optional String) людей
 - Добавьте в него несколько элементов, как с профессией, так и с профессией == nil
 */

var nameOfWorker = ("Anton", "Vadim", "Boris")

var profession = ("manager", "seller", "cleaner")

var optional = [nameOfWorker, profession]

// не понял как добавить профессии в кортеж


/*:
 4.
 - Для массива из упражнения 3 напишите код, который выводит в консоль
 4.1 "Array not exists" -- если массив nil
 4.2 "Array is empty" -- если массив пустой
 4.3 "There is only one person" -- если массив содержит только один элемент
 */

if optional == nil {
    print("Array not exists")
} else if optional.isEmpty {
    print("Array is empty")
} else if optional.count == 1 {
    print("There is only one person")
}

/*:
 5.
 - Напишите функцию, которая получает на вход массив int и возвращает массив Int, в
 котором удалены все элементы Которые делятся на 2 или 3
 */

/*:
 6.
 - Ниже приводится выписка из прав пассажиров общественного транспорта
 
 Пассажи имеет право провозить в нерегулярном сообщении с согласия автомобильного перевозчика при выполнении условий обеспечения безопасности пассажиров и экипажа собаку крупной породы (высота в холке более 50 см). При этом пассажир должен быть не моложе 16 лет, а если собака потенциально опасной породы, то пассажир должен быть совершеннолетним;
 
 Попробуйте объявить необходимые переменные, упомянутые в данном абзаце и написать код
 проверок, который по входным данным выведет в консоль. "Пассажир может провезти собаку" или
 "пассажир не может провезти собаку"
 Passenger can bring a dog
 Passenger can not carry the dog
 
 */

var agePassenger = 20

var dangerousDog = false

var notDangerousDog = true

if agePassenger >= 16 && notDangerousDog {
    print("Passenger can bring a dog")
} else if agePassenger <= 16 && notDangerousDog  && dangerousDog {
    print("Passenger can not carry the dog")
} else if agePassenger >= 18 && notDangerousDog  && dangerousDog {
    print("Passenger can bring a dog")
} else {
    print("Passenger can not carry the dog")
}







/*:
 7.
 - Создайте переменную -- массив Int?
 - Замените все nil в массиве на 0
 - Создайте новый массив [Int] с теми же значениями, что и в первом
 */
