import Cocoa

//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.

 enum Engine {
     case petrol
     case diesel
 }

 enum EngineActions {
     case on
     case off
 }


 class Car {
     var model: String
     var color: String
     var engine: Engine
     var engineStatus: EngineActions

     init(model: String, color: String, engine: Engine) {
        self.model = model
        self.color = color
        self.engine = engine
        self.engineStatus = .off
     }

     func engineSwitchOn() {
         switch self.engineStatus {
             case .off : self.engineStatus = .on
             case .on : print("Двигатель уже запущен")
         }
     }

     func engineSwitchOff() {
         switch self.engineStatus {
             case .on : self.engineStatus = .off
             case .off : print("Двигатель уже остановлен")
         }
     }

     func averageSpeed() {

     }
    
     func averageCargoVolume(){
        
     }
 }

 //2. Описать пару его наследников truсkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
 //3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
 //4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.

 class SportCar: Car {
    var nitro: Bool
    var currentSpeed: Int
    
    init(model: String, color: String, engine: Engine, Nitro: Bool, speed: Int) {
        self.nitro = true
        self.currentSpeed = 150
        super.init(model: model, color: color, engine: engine)
     }
    

     override func averageSpeed() {
        
        print("Средняя скорость очень высокая")
     }
    
     override func averageCargoVolume() {
        print("Средняя вместительность багажника очень маленькая")
     }
    
    func gainSpeed(){
        let maxSpeed: Int = 260
        let nitroSpeedBonus: Int = 50
        if maxSpeed > (currentSpeed + nitroSpeedBonus) && (maxSpeed - currentSpeed) >= nitroSpeedBonus {
            self.currentSpeed += nitroSpeedBonus
        } else {
            print("Невоозможно увеличить скорость")
        }
    
     
 }
 }

 class TruckCar: Car {
    var trailer: Bool
    var currentCargoVolume: Int

    init(model: String, color: String, engine: Engine, trailer: Bool, cargo: Int) {
        self.trailer = true
        self.currentCargoVolume = 240
        super.init(model: model, color: color, engine: engine)
         
     }

     override func averageSpeed() {
        print("Средняя скорость очень маленькая")
     }
    
     override func averageCargoVolume() {
        print("Средняя вместительность багажника очень большая")
     }

     func uploadSomeGoods(goodsToUpload: Int) {
        let maxCargoVolume: Int = 500
        let goodsToUpload: Int = 50
        
         if (goodsToUpload + currentCargoVolume) > maxCargoVolume {
            print("Невозможно загрузить такое количество товара")
         }
         else {
             self.currentCargoVolume += goodsToUpload
         }
     }
 }

 //5. Создать несколько объектов каждого класса. Применить к ним различные действия.

    let lamborghini = SportCar(model: "Lamborghini Huracan", color: "blue", engine: .petrol, Nitro: true, speed: 200)
    let porshe = SportCar(model: "Porshe 911 Turbo S", color: "grey", engine: .diesel, Nitro: false, speed: 160)
    let cybertruck = TruckCar(model: "Tesla Cybertruck", color: "grey", engine: .petrol, trailer: false, cargo: 600)
    let ram = TruckCar(model: "RAM 1500", color: "white", engine: .diesel, trailer: true, cargo: 800)
    
lamborghini.engineSwitchOn()
lamborghini.gainSpeed()
porshe.engineSwitchOff()

cybertruck.uploadSomeGoods(goodsToUpload: 150)
cybertruck.engineSwitchOn()
ram.engineSwitchOff()

 //6. Вывести значения свойств экземпляров в консоль.

print(lamborghini.currentSpeed)
print(porshe.color)
print(cybertruck.currentCargoVolume)
print(ram.model)
