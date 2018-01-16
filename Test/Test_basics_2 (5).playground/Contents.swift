/*:
 1.
 - Объявите одну константу carModel типа String
 - Объявите Optional переменную repairKit типа Int
 - Выведите в консоль сообщение типа "Wolkswagen has 1 repair kit on board"
 */

let carModel: String = "Wolkswagen"

var repairKit: Int? = 1

print("\(carModel) has \(repairKit!) repair kit on board")


/*:
 2.
 - Объявите Optional переменную массив элементов типа Optional(String)
 - Добавьте в массив 3 любые строки и один nil
 - выведите количество элементов в массиве в консоль
 */

var name = [String?]()

name.append("Arthur")
name.append("Artem")
name.append("Anton")
name.append(nil)

name.count

/*:
 3.
 - Объявите константный массив с 3-мя строками: "cow", "eagle", "fish"
 - Для каждого элемента массива выведите в консоль длинну слова, если слово начинается с согласной
 */

let animalsArray = ["cow", "eagle", "fish"]

for animal in animalsArray {
    if animal.first == "c" || animal.first == "f" {
        print("\(animal) consists of \(animal.count) letters" )
    }
}

/*:
 4.
 - Объявите перечисление содержащее цвета радуги (сколько вспомните)
 - Создайте константный массив со строками "blue", "orange", "black", "white"
 - для каждого элемента массива выведите название цвета, если он является одним из цветов радуги
 */

enum ColorsOfRainbow: String {
    case red = "red"
    case orange = "orange"
    case yellow = "yellow"
    case green = "green"
    case blue = "blue"
    case purple = "purple"
}

let colors = ["blue", "orange", "black", "white"]

var color = ColorsOfRainbow.blue


/*:
 5.
 - Объявите переменную словарь (Dictionary) , в котором ключом является String, а значением Int
 - Объявите массив строк и добавте в него 10 любых слов
 - заполните словарь так, то каждое слово массива будет ключом, а значением будет длина этого слова
 - выведите содержимое словаря в консоль
 */

var dictionary = [String : Int]()

var array = ["Hello", "Buy", "Cat", "Dog", "Friend", "Sister", "Brother", "Car", "Sun", "Big"]

// var numberOfCharacters = array[0].characters.count

// dictionary = [Array[0] : array[0].characters.count]
