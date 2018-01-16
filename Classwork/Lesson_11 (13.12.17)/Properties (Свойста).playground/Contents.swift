//: Properties (Свойста)

// Бывают у классов и структур

import Foundation // импортируем для типа данных Date

class Object {
   private var mutableInt = 10 // Доступна только в нутри класса для чтения private
   private var previousObjectState: Object?
    
    var intValue: Int {
    return mutableInt
    }
    
    var doubleValue: Double {
        get {
            return Double(mutableInt)
        }
        set {
            mutableInt = Int(newValue)
        }
    }
    
    var stringValue: String? {
        willSet {
            print(stringValue ?? "") // ?? в случает стрингВалуе будет нил - выведется пустая строка
            print(newValue ?? "")
        }
        didSet {
            print(oldValue ?? "")
            print(stringValue ?? "")
        }
    }
    
    lazy var dateValue: Date = {
        return Date() //возвращает по умолчанию текущую дату
    }()
    
    init() {
        previousObjectState = nil
 
    }
    init(previousObject: Object) {
        self.previousObjectState = previousObject
    }
}

let obj = Object()
print(obj.intValue)
obj.doubleValue = 20.0
obj.doubleValue
obj.stringValue = "try"
print(obj.dateValue)

