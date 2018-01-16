/*:
 ## Упражнение - Массивы
 
Предположим, что вы являетесь координатором мероприятия для благотворительного мероприятия сообщества и сохраняете список зарегистрированных пользователей. Создайте переменную `registrationList`, которая будет содержать строки. После инициализации он должен быть пустым.
 */

var registrationList: [String] = []

/*:
  Ваша подруга Сара первая регистрируется на мероприятие. Добавьте ее имя в `registrationList`, используя метод` append (_ :) `. Распечатайте содержимое коллекции.
 */

registrationList.append("Sara")
print(registrationList)

/*:
  Добавьте четыре дополнительных имени в массив, используя оператор `+ =`. Все имена должны быть добавлены за один шаг. Распечатайте содержимое коллекции.
 */

registrationList += ["Ivan", "Konstantin", "Boris", "Ekaterina"]
print(registrationList)

/*:
 Используйте метод `insert (_: at:)` для добавления `Charlie` в массив как второй элемент. Распечатайте содержимое коллекции.
 */

registrationList.insert("Charlie", at: 1)
print(registrationList)

/*:
У кого-то был конфликт и он решил передать свою регистрацию кому-то другому. Используйте подтипирование массива, чтобы изменить шестой элемент на «Ребекку». Распечатайте содержимое коллекции.
 */

registrationList[5] = "Rebecca"
print(registrationList)

/*:
 Вызовите `removeLast ()` на `registrationList`. Если все сделано правильно, это должно удалить «Ребекка» из коллекции. Сохраните результат `removeLast ()` в новую константу `deletedItem`, затем напечатайте` deletedItem`.
 */

let deletedItem = registrationList.removeLast()
print(deletedItem)




//: page 1 of 4  |  [Next: App Exercise - Activity Challenge](@next)
