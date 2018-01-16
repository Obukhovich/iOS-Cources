//: Playground - noun: a place where people can play

import UIKit

// 1.

func arifmProgression(startNumber: Int, finishNumber: Int) -> Int {
    var sum = 0
    for i in startNumber...finishNumber {
        sum += i
    }
    return sum
}

arifmProgression(startNumber: 0, finishNumber: 10)


// 2.

func arifmProgression(_ finishNumber: Int) -> Int {
    return arifmProgression(startNumber: 0, finishNumber: finishNumber)
}

// 3.

func nullableArifmProgression(startNumber: Int, finishNumber: Int) -> Int? {
    guard finishNumber > startNumber else {
        return nil
    }
    var sum = 0
    for i in startNumber...finishNumber {
        sum += i
    }
    return sum
}
func arifmProgression(finishNumber: Int) -> Int {
    if let sum = nullableArifmProgression(startNumber: 0, finishNumber: finishNumber) {
        return sum
    }
        return 0
}

arifmProgression(startNumber: 0, finishNumber: 10)


func minMax(array:[Int]) -> (Int,Int)? {
    if let max = array.max(), let min = array.min() {
        return (min, max)
    }
    return nil

}


// 4.

func printSomething() -> () {
    print("smth")
}

var someFunc = printSomething
someFunc()
var progression: (Int, Int) -> Int

// 5.

var sum: Int = 0
func progression (maxValue: Int, sum: inout Int) {
    sum = arifmProgression(maxValue)
    
}

progression(maxValue: 10, sum: &sum)
print(sum)

// 6.

func progression(max: Int, min: Int = 0) -> Int {
    return 0
}
