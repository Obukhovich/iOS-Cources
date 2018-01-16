// СЛОВАРИ

//Создадим словарь с количеством дней в разных месяцах:

var daysOfMonths: [String: Int] = ["January": 31, "February": 28, "March": 31]
print(daysOfMonths)

// Добавим в словарь апрель:

daysOfMonths["April"] = 30
print(daysOfMonths)

// Изменим количество дней в феврале на 29 (високосный год):

daysOfMonths.updateValue(29, forKey: "February")
print(daysOfMonths)

/*:
 Use if-let syntax to retrieve the number of days under "January". If the value is there, print "January has 31 days", where 31 is the value retrieved from the dictionary.
 */


/*:
 Given the following arrays, create a new [String : [String]] dictionary. `shapesArray` should use the key "Shapes" and `colorsArray` should use the key "Colors". Print the resulting dictionary.
 */
let shapesArray = ["Circle", "Square", "Triangle"]
let colorsArray = ["Red", "Green", "Blue"]


/*:
 Print the last element of `colorsArray`, accessing it through the dictionary you've created. You'll have to use if-let syntax or the bang operator to unwrap what is returned from the dictionary before you can access element of the array.
 */


//: [Previous](@previous)  |  page 3 of 4  |  [Next: App Exercise - Pacing](@next)
