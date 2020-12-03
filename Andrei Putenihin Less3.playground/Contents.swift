import UIKit


struct SportCar {
    var carBrend : String // марка
    var release : Double // год выпуска
    var trunkCapacity : Double // обьем багажника
    var digital : String // запущен ли двигатель
    var window : String // открыты ли окна
    var trunkCapacityFull : Double // заполненый обьем багажника

    
    emun digital {
        case start, off
    }
    emun window {
        open, close
    }

        mutating func openWindow(){
        self.window = .open
        }
        mutating func closeWindow(){
        self.window = .close
        }
        
        mutating func startDigital(){
        self.window = .start
        }
        mutating func offDigital(){
        self.window = .off
        }
        
    mutating func changeTrunkCapacity(newTrunkCapacity : Double){
    print(newTrunkCapacity)
    self.TrunkCapacity = newTrunkCapacity
 }
}
        
        
var opel = SportCar(carBrend: opel, release: 2007, trunkCapacity: 340, digital: off, window: open, trunkCapacityFull: 40)
opel.changeTrunkCapacity(newTrunkCapacity: 600)
