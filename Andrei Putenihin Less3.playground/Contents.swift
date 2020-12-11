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

  struct SportCar {
    var carBrend : String // марка
    var release : Double // год выпуска
    var trunkCapacity : Double // обьем багажника
    var digital : Digital // запущен ли двигатель
    var windowState : Window// открыты ли окна
    var full : Double // заполненый обьем багажника

    

    mutating func stateWindow(state:Window){
        switch state {
        case .Open:
            self.windowState = .Open
            print("Окна у \(carBrend) опущены")
        case .Close:
            self.windowState = .Close
            print("Окна у \(carBrend) подняты")
        }
    }
    
        mutating func stateDigital(state:Digital){
            switch state {
            case .Start:
                self.digital = .Start
                print("Двигатель у \(carBrend) заведен")
            case .Off:
                self.digital = .Off
                print("Двигатель у  \(carBrend) заглушен")
            }
        }
    
        
    mutating func fullWeight(weight : Double, trunkFull : trunkFull){
        switch trunkFull {
        case .Load where (full <= trunkCapacity) && (full >= 0) && (full + weight) <= trunkCapacity:
            self.full += weight
            print("В \(carBrend) загруженно \(weight) груза. Заполнено: \(full) из \(trunkCapacity)")
        case .Upload where (full <= trunkCapacity) && (full >= 0) && (full - weight) >= 0:
            self.full -= weight
            print("Из \(carBrend) выгруженно \(weight) груза. Заполнено: \(full) из \(trunkCapacity)")
        default:
            print("Необхдимо вводить значение от 0 и до обьема кузова")
        }
     }
  }
        

struct TrunckCar {
  var carBrend : String // марка
  var release : Double // год выпуска
  var trunkCapacity : Double // обьем багажника
  var digital : Digital // запущен ли двигатель
  var windowState : Window// открыты ли окна
  var full : Double // заполненый обьем багажника


    mutating func stateWindow(state:Window){
        switch state {
        case .Open:
            self.windowState = .Open
            print("Окна у \(carBrend) опущены")
        case .Close:
            self.windowState = .Close
            print("Окна у \(carBrend) подняты")
        }
    }
    
        mutating func stateDigital(state:Digital){
            switch state {
            case .Start:
                self.digital = .Start
                print("Двигатель у \(carBrend) заведен")
            case .Off:
                self.digital = .Off
                print("Двигатель у  \(carBrend) заглушен")
            }
        }
    
    mutating func fullWeight(weight : Double, trunkFull : trunkFull){
        switch trunkFull {
        case .Load where (full <= trunkCapacity) && (full >= 0) && (full + weight) <= trunkCapacity:
            self.full += weight
            print("В \(carBrend) загруженно \(weight) груза. Заполнено: \(full) из \(trunkCapacity)")
        case .Upload where (full <= trunkCapacity) && (full >= 0) && (full - weight) >= 0:
            self.full -= weight
            print("Из \(carBrend) выгруженно \(weight) груза. Заполнено: \(full) из \(trunkCapacity)")
        default:
            print("Необхдимо вводить значение от 0 и до обьема кузова")
        }
     }
  }


   var car1 = SportCar(carBrend: "Opel", release: 2007, trunkCapacity: 340, digital: .Start, windowState: .Open, full: 0)
   var car2 = SportCar(carBrend: "Ford", release: 2013, trunkCapacity: 450, digital: .Off, windowState: .Close, full: 0)
   var truck1 = SportCar(carBrend: "Maz", release: 2001, trunkCapacity: 13000, digital: .Start, windowState: .Open, full: 0)
   var truck2 = SportCar(carBrend: "Volvo", release: 2020, trunkCapacity: 14500, digital: .Off, windowState: .Close, full: 0)


car1.fullWeight(weight: 40, trunkFull: .Load)
car1.fullWeight(weight: 45, trunkFull: .Load)
car1.fullWeight(weight: 47, trunkFull: .Upload)
car1.fullWeight(weight: 17, trunkFull: .Load)
car1.fullWeight(weight: 30, trunkFull: .Upload)
car1.stateDigital(state: .Start)
car1.stateWindow(state: .Open)
car1.stateWindow(state: .Close)
car1.stateDigital(state: .Off)

car2.fullWeight(weight: 638, trunkFull: .Load)
car2.fullWeight(weight: 190, trunkFull: .Load)
car2.fullWeight(weight: 350, trunkFull: .Upload)
car2.stateWindow(state: .Close)
car2.stateDigital(state: .Start)

truck1.fullWeight(weight: 4100, trunkFull: .Load)
truck1.fullWeight(weight: 3760, trunkFull: .Load)
truck1.fullWeight(weight: 3160, trunkFull: .Upload)
truck1.stateWindow(state: .Open)
truck1.stateDigital(state: .Off)

truck2.fullWeight(weight: 2990, trunkFull: .Load)
truck2.fullWeight(weight: 390, trunkFull: .Load)
truck2.fullWeight(weight: 4210, trunkFull: .Upload)
truck2.stateWindow(state: .Open)
truck2.stateDigital(state: .Off)


  
