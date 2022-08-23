![Запись экрана 2022-08-23 в 14 35 43](https://user-images.githubusercontent.com/78212378/186156477-d98235bd-88aa-4f94-8e96-5e8cfc6eb645.gif)

![Запись экрана 2022-08-23 в 14 41 00](https://user-images.githubusercontent.com/78212378/186154432-a67b7905-d20c-4c16-a4c9-dffd7ec488e9.gif)

- Выполнено ДЗ по теме SwiftUI

Задача 1:

Создайте новый проект в Xcode. Перепишите в свой проект код, который был на демо в вебинаре по этой теме. Это нужно для того, чтобы вы посмотрели на SwiftUI изнутри и поняли отличия от UIKit.

Задача 2:

Создайте два модификатора для текста:

для заголовка (жирный крупный текст, фоновый цвет)
для основного текста (регулярный текст без фона)

Задача 3:

Необходимо построить интерфейс входа в профиль страницы Profile приложения ВК с помощью SwiftUI: Пример.

поместить логотип VK
создать поля для ввода email и password
добавить кнопку login
в нижней части экрана воспроизвести ленту с кнопками и иконками

- Выполнено ДЗ по теме Face ID, Touch ID

Задача 1

Основное задание

Создайте класс LocalAuthorizationService
Создайте в этом классе метод func authorizeIfPossible(_ authorizationFinished: @escaping (Bool) -> Void), где Bool будет служить успешной/неуспешной авторизацией
Внутри метода добавьте проверку возможности использования биометрии
Авторизацию по биометрии
Вызов authorizationFinished по результату проверки и авторизации
На экране авторизации добавьте кнопку авторизации по биометрии

Дополнительное задание * (со звездочкой)

В классе LocalAuthorizationService добавьте переменную, которая будет отдавать информацию о том, какой тип авторизации доступен пользоватлею FaceID/TouchID. В зависимости от типа, установите иконку на кнопку
Дополнительно в authorizationFinished добавьте возможность передачи ошибки в виде параметра
На экране авторизации добавьте обработку ошибок от биометрии и их вывод пользователю

- Выполнено ДЗ по теме - "Работа с уведомлениями"

В приложении создать локальное уведомление с текстом “Автообновление” с настройками на каждый день в 19:00.

Создайте сервис LocalNotificationsService
В нем добавьте метод func registeForLatestUpdatesIfPossible()
Внутри этого метода сделайте запрос на отправку уведомлений со следующими опциями: .sound, .badge, .provisional
Если доступ есть, то зарегистрируйте уведомление, которое каждый день в 19 часов будет отправлять уведомление с текстом "Посмотрите последние обновления"
Добавьте LocalNotificationsService в AppDelegate и в методе didFinishLaunching... делайте запрос на уведомления