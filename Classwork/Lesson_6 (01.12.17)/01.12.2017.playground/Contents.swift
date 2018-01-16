//: Playground - noun: a place where people can play

import UIKit

class Person {
    weak private var creditCard: CreditCard?
    
    init(creditCard: CreditCard) {
        self.creditCard = creditCard
    }
    
    func removeCreditCard() {
        creditCard = nil
    }
}

class CreditCard {
    let number: String = "4242 4242 4242 4242"
    var person: Person?
    

    deinit {
        print("credit card removed")
    }
}


var credit: CreditCard? = CreditCard()
var me: Person? = Person(creditCard: credit!)
credit?.person = me

me?.removeCreditCard()
credit = nil

 



