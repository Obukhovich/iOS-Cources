

import UIKit


struct Country {
    let name: String
    let population: Int
    let neightbours: [Country]
}

/*
JSON - текстовый формат обмена данными (между браузером и сервером,
 так и между самими серверами (программные HTTP-сопряжения).)
    {
    “country”: {
    “name”: “Belarus”,
    “population”: 10000,
    “neightbours”: [
        {
        “name”: “Poland”, “population”: 30000000
        },
        {
        “name”: “Latvia”, “population”: 20000000
        }
        ]
    }
}

// для проверки вставить в валидатор онлайн

 
 
 
 ПРИМЕР ИЗ ВИКИПЕДИИ
 
 {
 "firstName": "Иван",
 "lastName": "Иванов",
 "address": {
 "streetAddress": "Московское ш., 101, кв.101",
 "city": "Ленинград",
 "postalCode": 101101
 },
 "phoneNumbers": [
 "812 123-1234",
 "916 123-4567"
 ]
 }
 
 
 На языке XML подобная структура выглядела бы примерно так:
 
 <person>
 <firstName>Иван</firstName>
 <lastName>Иванов</lastName>
 <address>
 <streetAddress>Московское ш., 101, кв.101</streetAddress>
 <city>Ленинград</city>
 <postalCode>101101</postalCode>
 </address>
 <phoneNumbers>
 <phoneNumber>812 123-1234</phoneNumber>
 <phoneNumber>916 123-4567</phoneNumber>
 </phoneNumbers>
 </person>
 
 */
