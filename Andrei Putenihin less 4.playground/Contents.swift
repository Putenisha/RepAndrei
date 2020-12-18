import UIKit

enum Digital {
    case Start //заведен
    case Off //заглушен
}
enum Window {
   case Open //опущены
   case Close //подняты
}
enum trunkFull {
   case Load //загружен
   case Upload //выгружен
}
enum booster {
   case True
   case False
}
enum trailer {
   case Hook // подцеплен
   case Detached // отцеплен
}
enum pneumatics {
   case On // вкл
   case Off // выкл
}
enum manipulator {
   case Installed // установлен
   case Removed // снят
}


class Car {
  var Brend : String // марка
  var release : Double // год выпуска
  var trunkCapacity : Double // обьем багажника
  var digital : Digital // запущен ли двигатель
  var windowState : Window// открыты ли окна
  var full : Double // заполненый обьем багажника
 
    init (Brend : String, release : Double, trunkCapacity : Double, digital : Digital, windowState : Window, full : Double) {
        self.Brend = Brend
        self.release = release
        self.trunkCapacity = trunkCapacity
        self.digital = digital
        self.windowState = windowState
        self.full = full
    }
    func stateWindow(state:Window){
        switch state {
        case .Open:
            self.windowState = .Open
            print("Окна у \(Brend) опущены")
        case .Close:
            self.windowState = .Close
            print("Окна у \(Brend) подняты")
        }
    }
    func stateDigital(state:Digital){
        switch state {
        case .Start:
            self.digital = .Start
            print("Двигатель у \(Brend) заведен")
        case .Off:
            self.digital = .Off
            print("Двигатель у  \(Brend) заглушен")
        }
    }
    func fullWeight(weight : Double, trunkFull : trunkFull){
        switch trunkFull {
        case .Load where (full <= trunkCapacity) && (full >= 0) && (full + weight) <= trunkCapacity:
            self.full += weight
            print("В \(Brend) загруженно \(weight) груза. Заполнено: \(full) из \(trunkCapacity)")
        case .Upload where (full <= trunkCapacity) && (full >= 0) && (full - weight) >= 0:
            self.full -= weight
            print("Из \(Brend) выгруженно \(weight) груза. Заполнено: \(full) из \(trunkCapacity)")
        default:
            print("Необхдимо вводить значение от 0 и до обьема кузова")
        }
     }
    func action() {
        print("")       }
}


class SportCar : Car{
    var booster = true
    init(Brend : String, release : Double, trunkCapacity : Double, digital : Digital, windowState : Window, full : Double, booster : Bool) {
        self.booster = booster
        super.init(Brend: <#T##String#>, release: <#T##Double#>, trunkCapacity: <#T##Double#>, digital: <#T##Digital#>, windowState: <#T##Window#>, full: <#T##Double#>)
    }
    func booster(state:booster){
        switch state {
        case .True:
            self.booster = true
            print("Ускоритель у \(Brend) есть")
        case .False:
            self.booster = false
            print("Ускоритель у \(Brend) отсутствует")
   }
  }
    override func action() {
        print ("Запрос на включение ускорителя")
        }
}

class TrunckCar : Car{
    var trailer : trailer // прицепп
    var pneumatics : pneumatics //пневма
    var manipulator : manipulator // манипулятор
    init(Brend : String, release : Double, trunkCapacity : Double, digital : Digital, windowState : Window, full : Double, trailer : trailer, pneumatics : pneumatics, manipulator : manipulator) {
        self.trailer = trailer
        self.pneumatics = pneumatics
        self.manipulator = manipulator
        super.init(Brend: <#T##String#>, release: <#T##Double#>, trunkCapacity: <#T##Double#>, digital: <#T##Digital#>, windowState: <#T##Window#>, full: <#T##Double#>)
}
    func trailer(state:trailer){
        switch state {
        case .Hook:
            self.trailer = .Hook
            print("Прицеп к \(Brend) подцеплен")
        case .Detached:
            self.trailer = .Detached
            print("Прицеп у \(Brend) отцеплен")
        }
 }
    func pneumatics(state:pneumatics){
        switch state {
        case .On:
            self.pneumatics = .On
            print("Пневма у \(Brend) включена")
        case .Off:
            self.pneumatics = .Off
            print("Пневма у \(Brend) отключена")
        }
 }
    func manipulator(state:manipulator){
        switch state {
        case .Installed:
            self.manipulator = .Installed
            print("Манипулятор на \(Brend) установлен")
        case .Removed:
            self.manipulator = .Removed
            print("Манипулятор с \(Brend) снят")
        }
 }
    override func action() {
        print("Заявка на перевоз груза")
        }
}

var car1 = SportCar(Brend: "Opel", release: 2007, trunkCapacity: 340, digital: .Start, windowState: .Open, full: 0, booster: false)

car1.action()
car1.windowState = .Open
car1.digital = .Start
car1.booster = true
car1.full = 15
car1.trunkCapacity = 200


var car2 = SportCar(Brend: "Ford", release: 2013, trunkCapacity: 450, digital: .Off, windowState: .Close, full: 0, booster: true)

car2.action()
car2.windowState = .Close
car2.digital = .Off
car2.booster = true
car2.full = 23
car2.trunkCapacity = 333

var car3 = TrunckCar(Brend: "Maz", release: 2001, trunkCapacity: 13000, digital: .Start, windowState: .Open, full: 0, trailer: .Hook, pneumatics: .Off, manipulator: .Installed)

car3.action()
car3.windowState = .Close
car3.digital = .Off
car3.manipulator = .Installed
car3.full = 84
car3.trunkCapacity = 4444
car3.pneumatics = .Off
car3.trailer = .Detached

print(car1.booster)
print(car3.manipulator)
print(car2.Brend)
