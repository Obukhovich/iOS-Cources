//: Playground - noun: a place where people can play

import UIKit

// Рассмотрим enum на примере ошибок:

enum NetworkError: Error {
    case serverError
    case notFound
    case notAutorized
    
    func errorMessage() -> String {
        switch self {
        case .serverError:
            return "Ups something goes wrong"
        case .notFound:
            return "User not found"
        case .notAutorized:
            return "User not autorized"
        }
    }
}

struct User {
    let name: String
    let id: String
}


func getUser(id: String) -> (NetworkError?, User?) {
    if Int(id)! < 1000 {
        return (nil, User(name: "Ivan", id: id))
}
return (.notFound, nil)
}

let userResult = getUser(id: "1200")
let errorMessage: String
if userResult.1 == nil {
print(userResult.0!.errorMessage())

}

enum Food: String {
    case pizza = "Pizza"
    case apple = "Apple"
}


let pizza = Food.pizza

print(pizza.rawValue) // Выводит то что в кавычках, обязательно тип данных указать.



enum ApiEndpoint {
    case getUser(id: String)
    case postUser(name: String, email: String)
}

let getUser = ApiEndpoint.getUser(id: "1000")

// Case можно писать через запятую - несколько значений

