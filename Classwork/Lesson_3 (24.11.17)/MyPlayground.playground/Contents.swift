//: Playground - noun: a place where people can play



func add(_ first: Int, _ second: Int) -> Int {
return first + second

}

add(3,1)

func substract(_ first: Int, _ second: Int) -> Int {
    return first - second
}

substract(3, 1)



func swap(_ first: inout Int, _ second: inout Int) {
    let temp = first
    first = second
    second = temp
}

var x = 13
var y = 15
swap(&x,&y)

print()



class LocationStruct {
    var longitube: Double?
    let latitube: Double
    
    init() {
//        longitube = 0
        latitube = 0
    }
}

// инициализатор должен быть в классе

enum CalculatorOperation {
    case plus
    case minus
    case sqRoot
    
}


class Calculator {
    var result: Int?
    var inputValue: Int = 0
    var nexOperation: CalculatorOperation?
    
    func nextNumber(_ nextNumber: Int) -> Int {
        if nexOperation ==  CalculatorOperation.plus {
           result = inputValue + nextNumber
        }
        if nexOperation == .minus {
        result = inputValue - nextNumber
        }
        return result!
        
    }
    
    func add(_ first: Int, _ second: Int) -> Int {
        result = first + second
        print(result!)
        return result!
        
    }
    
    func substract(_ first: Int, _ second: Int) -> Int {
        result = first - second
        
        return result!
    }
    
}

var calculator = Calculator()
calculator.inputValue = 10
calculator.nexOperation = .plus
calculator.nextNumber(20)










