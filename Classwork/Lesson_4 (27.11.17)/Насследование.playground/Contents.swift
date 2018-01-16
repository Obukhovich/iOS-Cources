//: Playground - noun: a place where people can play

import UIKit

class Venicle {
    var currentSpeed: Double = 0
    
    func description() -> String {
        return "Venicle current speed is \(currentSpeed)"
    }
}

class Motorcycle: Venicle {
    var seats: Int
    
    init(seats: Int) {
        self.seats = seats
    }

override func description() -> String {
    return super.description() + " and has \(seats) seats"
    }
}


let myCar = Venicle()
myCar.currentSpeed = 60
print(myCar.description())

let myMotorcycle = Motorcycle(seats: 2)
print(myMotorcycle.description())


