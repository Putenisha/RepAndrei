import UIKit

//Функция определения четного числа
func EvenNumber(number : Int){
    switch number{
    case _ where (number % 2 == 0):
    print("Четное")
    default:
    print("Не четное")
    }
    
}

//Функция определение деления на 3
func Division(number : Int){
    switch number{
    case _ where (number % 3 == 0):
    print("Делится на 3 без остатка")
    default:
    print("Не делится на 3 без остатка")
    }
    
}


//Удалить из массива все четные числа и числа не делящиеся на 3
var Numbers = [Int] (1...100) // создание массива на 100 элементов
var NewNumbers = [Int] ()

for (value) in Numbers{
    if (value % 2) != 0 && (value % 3) != 0{
        NewNumbers.append(value)
 }
}
print(NewNumbers)
