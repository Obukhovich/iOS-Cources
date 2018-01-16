/*
 Объявите структуру, которая описывает окружность. Реализуйте для неё протоколы Comparable, Equatable, Hashable
 Так же напишите примеры, которые используют  реализованные протоколы
 */

struct Round: Hashable, Comparable {
    var centr: (Int, Int)
    var radius: Int
    
    
    var hashValue: Int {
        return centr.0.hashValue ^ centr.1.hashValue ^ radius.hashValue // ксор - исключение (не переполняет значение) 64 бита Инт
    }

    static func == (lhs: Round, rhs: Round) -> Bool {              // протокол Hashable
        return lhs.centr == rhs.centr && lhs.radius == rhs.radius
    }
    
    static func <(lhs: Round, rhs: Round) -> Bool {              // протокол Comparable
        return lhs.radius < rhs.radius
    }
    
}


