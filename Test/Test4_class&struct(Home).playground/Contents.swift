import Foundation

/*:
 *1)*
- Объявите структуру Player, которая представляет собой игрока. Добавьте property, которое представляет собой имя игрока
- Объявите класс KNBGame, который будет описывать игру к камень-ножницы-бумага. Добавьте 2 property типа Player.
- Создайте 2 игрока с разными именами и инициализируйте ими объект типа KNBGame
 */
enum TurnItem: Int {
    case stone
    case clippers
    case paper
}

let arrayOfTurn = [TurnItem.clippers, TurnItem.stone, TurnItem.paper]

struct Player {
    var name: String
    
    func nextTurn(turnOne: TurnItem, turnTwo: TurnItem, turnThree: TurnItem) -> TurnItem {
        return TurnItem(rawValue: Int(arc4random_uniform(UInt32(arrayOfTurn[2].rawValue))))!
    }
    
}


class KNBGame {
    let nameOne: Player
    let nameTwo: Player
    
    init(nameOne: Player, nameTwo: Player) {
        self.nameOne = nameOne
        self.nameTwo = nameTwo
    }
    
    func roundOfGame(turnPlayerOne: TurnItem, turnPlayerTwo: TurnItem) -> String {
        var result = ""
        if (turnPlayerOne == .stone && turnPlayerTwo == .stone) || (turnPlayerOne == .clippers && turnPlayerTwo == .clippers) || (turnPlayerOne == .paper && turnPlayerTwo == .paper) {
            result = "Hичья"
        }
        else if (turnPlayerOne == .stone && turnPlayerTwo == .clippers) || (turnPlayerOne == .clippers && turnPlayerTwo == .paper) || (turnPlayerOne == .paper && turnPlayerTwo == .stone) {
            result = "Игрок 1 побеждает"
        }
        else if (turnPlayerOne == .clippers && turnPlayerTwo == .stone) || (turnPlayerOne == .paper && turnPlayerTwo == .clippers) || (turnPlayerOne == .stone && turnPlayerTwo == .paper) {
            result = "Игрок 2 побеждает"
        }
        return result
    }
}

let firstPlayerName = Player(name: "Ivan")
let secondPlayerName = Player(name: "Artur")


/*:
 *2)*
 - Объявите тип данных TurnItem, который будет описывать ход игрока (камень, ножницы или бумага)
 - Для Player объявите фунцию nextTurn, которая будет возвращать ход игрока (одно из действий выбранное случайным образом)
 - Для KNBGame объявите функцию, которая будет проводить один раунд игры и выводить в консоль его результат в виде:
 Игрок 1 побеждает || Игрок 2 побеждает || Ничья
 - Проведите один раунд игры
 */

/*:
 
 *3)*
 - Добавьте в KNBGame возможность указать количество раундов в игре при создании игры. Значение по умолчанию = 10
 - Добавьте property gameStatus, которое возвращает состояние игры (не начата, в процессе или закончена)
 - Добавьте Optional свойство gameResult, которое возвращает результат игры (тип результата придумайте сами)
 - Проведите одну игру из 15 раундов и выведите в консоль ее статус и результаты
 */

/*:
 *4)*
 - Добавьте в структуру игрока возможность хранить статистику. (количество выигранных и проигранных раундов и игр). Ничьи не храним.
 - Добавьте в структуру игрока функцию, которая выводит его статистику в консоль
 - Выведите статистику для только что созданного игрока и игрока, который сыграл одну игру. Для этого нужно добавить код, который изменяет статистику игрока во время игры или после ее окончания.
 */
