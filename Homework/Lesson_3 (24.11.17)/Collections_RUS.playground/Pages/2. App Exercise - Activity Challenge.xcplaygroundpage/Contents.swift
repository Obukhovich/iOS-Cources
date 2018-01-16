// РАБОТА С МАССИВАМИ:

// Созданим 2 массива:

var walkingChallenges: [String] = ["Walk 3 miles a day", "Walk up stairs instead of using elevator"]
var runningChallenges: [String] = ["Run 5 days a week", "Run 100 miles in a month"]



// Создадим ассив массивов:
// Print выводит в консользначение по индексам: [1] = Индекс массива, [0] = индекс значения этого массива.

var challenges = [walkingChallenges, runningChallenges]
print(challenges[1][0])



// Удалим полностью всю информацию из массива:

challenges.removeAll()
print(challenges)



// Создадим новый пустой массив:

var committedChallenges: [String] = ["1","2"]

// Пример использования массива с оператором if:

if committedChallenges.isEmpty {
    print("Go check out the challenges!")
} else if committedChallenges.count == 1 {
    print("The challenge you have chosen is \(committedChallenges[0])")
} else {
    print("You have chosen multiple challenges.")
}


//: [Previous](@previous)  |  page 2 of 4  |  [Next: Exercise - Dictionaries](@next)
