/*:
 ## App Exercise - Movements
 ## Упражнение для приложения - Движения
   
     > Эти упражнения усиливают концепции Swift в контексте приложения для отслеживания работоспособности.
   
     Предположим, ваше приложение содержит список различных движений, которые можно отслеживать. Вы хотите отобразить каждый элемент в списке пользователю. Используйте цикл for-in для циклического перемещения «движений» ниже и печати каждого движения. */
let movements: [String] = ["Walking", "Running", "Swimming", "Cycling", "Skiing", "Climbing"]
for movement in movements {
    print(movement)
}
/*:
Теперь предположим, что ваше приложение использует словарь для отслеживания средней частоты сердечных сокращений во время каждого движения «движений». Ключи соответствуют перечисленным выше движениям, а значения соответствуют средней частоте сердечных сокращений, которую отслеживал ваш фитнес-трекер во время данного движения. Прокрутитесь через `movementHeartRates` ниже, распечатайте заявления, сообщающие пользователю о его среднем сердечном ритме во время каждого упражнения.
 */
var movementHeartRates: [String: Int] = ["Walking": 85, "Running": 120, "Swimming": 130, "Cycling": 128, "Skiing": 114, "Climbing": 129]
for (movement, heartRate) in movementHeartRates {
    print("Your average heart rate when \(movement) is \(heartRate).")
}
//: [Previous](@previous)  |  page 2 of 6  |  [Next: Exercise - While Loops](@next)