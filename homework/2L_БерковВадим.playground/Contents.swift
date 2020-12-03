import UIKit


// 1. Написать функцию, которая определяет, четное число или нет.


func evenOdd(value :Int) -> String{
   
    if (value % 2 == 0){
        let evenOddAnswer :String = "Указанное число является чётным"
        return evenOddAnswer
    } else {
        let evenOddAnswer :String = "Указанное число является нечётным"
        return evenOddAnswer
    }
    
}

evenOdd(value: 2)
    
    
// 2. Написать функцию, которая определяет, делится ли число без остатка на 3.


func divideByThree (value :Int) -> String{
    
    if (value % 3 == 0){
        let divideByThreeAnswer :String = "Указанное число делится на 3 без остатка"
        return divideByThreeAnswer
    } else {
        let divideByThreeAnswer :String = "Указанное число не делится на 3 без остатка"
        return divideByThreeAnswer
    }

divideByThree(value: 3)
    
    
// 3. Создать возрастающий массив из 100 чисел.

    
var arrNumbers : [Int] = []

    for i in 0...100{
        arrNumbers.append(i)
    }
    
print(arrNumbers)

    
//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

    
    for value in arrNumbers {
        if((value % 2) != 0) && ((value % 3) != 0){
            arrNumbers.remove(at: arrNumbers.firstIndex(of: value)!)
        }
    }

    
// 5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.
// Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.

    // Как я понял, для начала нужно создать сам массив со стартовыми числами из последовательности Фибоначчи, поэтому:
    
    
var fibonacciNumber1 = 1 // первое число из последовательности Фибоначчи
var fibonacciNumber2 = 1 // второе число из последовательности Фибоначчи
var fibonacciArray = [fibonacciNumber1, fibonacciNumber2]
var n = 0 // количество чисел, которое будем добавлять в массив

func newFibonacciNumber(){
    let nextFibonacciNumber = fibonacciNumber1 + fibonacciNumber2
    fibonacciNumber1 = fibonacciNumber2
    fibonacciNumber2 = nextFibonacciNumber
    fibonacciArray.append(nextFibonacciNumber)
}
    while n < 100 {
    newFibonacciNumber()
    n = n + 1
}

print(fibonacciArray)

    
// 6. Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу.
    
// Видел ваше сообщение в Telegram на тему того, что лучше создать отдельную функцию, которая проверяет любое число больше двойки на простоту и возвращает значение Bool
    
    
func simpleNumberCheck (number :Int) -> Bool{
    if number < 2{
        return false
    }
    for i in 2..<number { // для переменной i в диапазоне от 2 до числа, меньше заданного...
        if number % i == 0{ // если заданное число делится без остатка на переменную i, значит оно НЕ простое
            return false // не берём for in 2...number, потому что number % i (в значении number) == 0, что соответствует значению true
        }
    }
        return true
}
    
func simpleNumberArray () -> [Int] {
    var trueSimple = [Int]()
    var p = 2 // в задании сказано, что переменная p изначально равна двум
    while trueSimple.count < 100 { // пока количество добавленных простых чисел в массиве не станет равно 99
        if simpleNumberCheck (number: p) { // если функция выдаёт значение true, т.е. определяет простое число
            trueSimple.append(p) // необходимо добавить в массив простое число в значении переменной trueSimple
        }
        p += p // а затем добавить к значению переменной p единицу и снова произвести проверку
    }
    
    return trueSimple
}
    
print(simpleNumberArray())

}
