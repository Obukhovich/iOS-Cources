/*:
 ## Exercise - For-In Loops
 ## Упражнение - Ввод-петли
   
     Создайте цикл for-in, который проходит через значения от 1 до 100 и печатает каждое из значений.
 */
for index in 1...100 {
    print(index)
}
/*:
   Создайте цикл for-in, который проходит через каждый из символов строки `alphabet` ниже и печатает каждое из значений рядом с индексом.
 */
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" 

for (index, letter) in alphabet.enumerated() {
    print("\(index): \(letter)")
}

/*:
 Создайте словарь `[String: String]`, где ключи являются именами состояний, а значения - их значениями. Включите по крайней мере три пары ключ / значение в своей коллекции, затем используйте цикл for-in для итерации по парам и распечатки ключей и значений в предложении.
 */
let statesAndCapitals: [String: String] = ["Virginia": "Richmond", "Utah": "Salt Lake City", "New York": "Albany"]

for (state, capital) in statesAndCapitals {
    print("The capital of \(state) is \(capital)")
}
//: page 1 of 6  |  [Next: App Exercise - Movements](@next)
