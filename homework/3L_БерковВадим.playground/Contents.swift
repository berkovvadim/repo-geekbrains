import Cocoa

//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.

struct SportCar{
    
    // Перечисляю данные для работы с информацией о двигателе, окнах и багажнике
    enum EngineActions : String {
        case on
        case off
    }
    enum WindowsActions : String {
        case open
        case close
    }
    enum CargoActions : String {
        case empty
        case full
    }
    
    // Бренд
    let brand : String
    // Модель
    let model : String
    // Год выпуска
    let releaseYear : Int
    // Цвет
    var color : String
    // Метод изменения цвета
    mutating func changeColor (color : String){
        switch color {
        case "white":
            self.color = "white"
        case "red":
            self.color = "red"
        case "green":
            self.color = "green"
        case "blue":
            self.color = "blue"
        default:
            self.color = "black"
        }
    }
    // Двигатель
    var engine : EngineActions{
        willSet {
            if newValue == .on{
                print("Сейчас двигатель включён")
            } else {
                print("Сейчас двигатель выключен")
            }
        }
    }
    // Методы включения и выключения двигателя
    mutating func engineSwitchOn(){
        self.engine = .on
    }
    mutating func engineSwitchOff(){
        self.engine = .off
    }
    // Окна
    var windows : WindowsActions{
        willSet {
            if newValue == .open{
                print("Окна сейчас открыты")
            } else {
                print("Окна сейчас закрыты")
            }
        }
    }
    // Методы открытия и закрытия окн
    mutating func windowsStatusOpen(){
        self.windows = .open
    }
    mutating func windowsStatusClose(){
        self.windows = .close
    }
    // Заполнен ли багажник
    var cargoStatus : CargoActions{
        willSet {
            if newValue == .full{
                print("Багажник сейчас загружен")
            } else {
                print("Багажник сейчас пуст")
            }
        }
    }
    // Методы загрузки и разгрузки багажника
    mutating func makeCargoFull(){
        self.cargoStatus = .full
    }
    mutating func makeCargoEmpty(){
        self.cargoStatus = .empty
    }
    // Погрузка/выгрузка из/в багажник(а) груза определённого объёма
    var cargoVolume : Double {
        willSet{
            if (cargoStatus == .empty) && (newValue < cargoVolume){
                var newVolume = cargoVolume - newValue
                print("Свободное пространство: /(newVolume)")
            } else {
                print("Ошибка ввода")
            }
        }
    }
    
   
}

struct TrunkCar{
    
    // Перечисляю данные для работы с информацией о двигателе, окнах и багажнике
    enum EngineActions : String {
        case on
        case off
    }
    enum WindowsActions : String {
        case open
        case close
    }
    enum CargoActions : String {
        case empty
        case full
    }
    
    // Бренд
    let brand : String
    // Модель
    let model : String
    // Год выпуска
    let releaseYear : Int
    // Цвет
    var color : String
    // Метод изменения цвета
    mutating func changeColor (color : String){
        switch color {
        case "white":
            self.color = "white"
        case "red":
            self.color = "red"
        case "green":
            self.color = "green"
        case "blue":
            self.color = "blue"
        default:
            self.color = "black"
        }
    }
    // Двигатель
    var engine : EngineActions{
        willSet {
            if newValue == .on{
                print("Сейчас двигатель включён")
            } else {
                print("Сейчас двигатель выключен")
            }
        }
    }
    // Методы включения и выключения двигателя
    mutating func engineSwitchOn(){
        self.engine = .on
    }
    mutating func engineSwitchOff(){
        self.engine = .off
    }
    // Окна
    var windows : WindowsActions{
        willSet {
            if newValue == .open{
                print("Окна сейчас открыты")
            } else {
                print("Окна сейчас закрыты")
            }
        }
    }
    // Методы открытия и закрытия окон
    mutating func windowsStatusOpen(){
        self.windows = .open
    }
    mutating func windowsStatusClose(){
        self.windows = .close
    }
    // Заполнен ли багажник
    var cargoStatus : CargoActions{
        willSet {
            if newValue == .full{
                print("Багажник сейчас загружен")
            } else {
                print("Багажник сейчас пуст")
            }
        }
    }
    // Методы загрузки и разгрузки багажника
    mutating func makeCargoFull(){
        self.cargoStatus = .full
    }
    mutating func makeCargoEmpty(){
        self.cargoStatus = .empty
    }
    // Погрузка/выгрузка из/в багажник(а) груза определённого объёма
    var cargoVolume : Double {
        willSet{
            if (cargoStatus == .empty) && (newValue < cargoVolume){
                _ = cargoVolume - newValue
                print("Свободное пространство: /(newVolume)")
            } else {
                print("Ошибка ввода")
            }
        }
    }
    
   
}


var chevroletCamaro = SportCar(brand: "Chevrolet", model: "Camaro 5th Gen", releaseYear: 2009, color: "red", engine: .on, windows: .close, cargoStatus: .empty, cargoVolume: 257)

var rangeRover = TrunkCar(brand: "Land Rover", model: "Range Rover Evoque", releaseYear: 2011, color: "default", engine: .off, windows: .open, cargoStatus: .full, cargoVolume: 1156)



chevroletCamaro.changeColor(color: "green")
rangeRover.changeColor(color: "blue")
chevroletCamaro.engine = .off
rangeRover.engine = .on
chevroletCamaro.windows = .open
rangeRover.windows = .close
chevroletCamaro.cargoStatus = .full
rangeRover.cargoStatus = .empty

print(chevroletCamaro)
print(rangeRover)





