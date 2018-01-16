//: Playground - noun: a place where people can play

import UIKit

// CLOSURES (замыкания)

var counter: Int = 0

var increment = { (increment: Int) -> () in counter = counter + increment }

increment(5)
print(counter)

counter = 0 // обнулили

increment(5) // опять захватывает значение
print(counter)


class Counter {
    var counter = 0
    var incrementer: ((Int) ->())?
    
    
    func getIncrementer() -> (Int) -> () {
        let increment = { (increment: Int) -> () in self.counter = self.counter + increment
        print(self.counter)
        }
        return increment
    }
    deinit {
        print("destroyed")
    }
}

var counterToDestroy: Counter? = Counter()
counterToDestroy = nil
counterToDestroy?.counter

    
var counterObject: Counter? = Counter()
let incClosure = counterObject?.getIncrementer()
counterObject = nil
incClosure?(10)
incClosure?(10)
incClosure?(10)


// теория:
/*
 функция это полноценнный тип данных
 
 */
