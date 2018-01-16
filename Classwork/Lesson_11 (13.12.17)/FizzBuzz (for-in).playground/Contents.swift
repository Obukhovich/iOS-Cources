/*
 Напишите программу, которая выводит на экран числа от 1 до 100. При этом вместо чисел, кратных трем, программа должна выводить слово «Fizz», а вместо чисел, кратных пяти — слово «Buzz». Если число кратно и 3, и 5, то программа должна выводить слово «FizzBuzz»
 */
var numbers = Array(1...100)

for number in numbers {
    if number % 3 == 0 && number % 5 == 0 {
        print("FizzBuzz")
    } else if number % 5 == 0 {
        print("Buzz")
    } else  if number % 3 == 0 {
        print("Fizz")
    } else {
        print(number)
    }
}




