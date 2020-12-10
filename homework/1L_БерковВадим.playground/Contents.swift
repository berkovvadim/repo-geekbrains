import UIKit


// Программа для решения квадратных уравнений типа:
// a * x^2 + b * x + c = 0

let aEquation : Float = 1 // число в позиции а
let bEquation : Float = -5 // число в позиции b
let cEquation : Float = 6 // число в позиции c

let discriminant : Float = bEquation * bEquation - ( 4 * aEquation * cEquation ) // вычисление дискриминанта b^2 - 4ac

if discriminant > 0{
    let x1 : Float = ( -bEquation + sqrt(discriminant) ) / ( 2 * aEquation ) // x1 = ( -b + квадратный корень D ) / 2a
    let x2 : Float = ( -bEquation - sqrt(discriminant) ) / ( 2 * aEquation ) // x2 = ( -b - квадратный корень D ) / 2a
    print(x1)
    print(x2)
} else if discriminant == 0 {
    let x1 : Float = -bEquation / ( 2 * aEquation ) // x1 = -b / 2a
    print(x1)
} else {
    print("Уравнение не имеет корней")
}


// Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

let aTriangle : Float = 3
let bTriangle : Float = 4

let cTriangle : Float = sqrt( aTriangle * aTriangle + bTriangle * bTriangle ) // вычисление длины гипотенузы прямоугольного треугольника
let sTriangle : Float = ( aTriangle * bTriangle) / 2 // вычисление площади прямоугольного треугольника
let pTriangle : Float = aTriangle + bTriangle + cTriangle // вычисление периметра прямоугольного треугольника

print("Длина гипотенузы c равна \(cTriangle)")
print("Площадь треугольника равна \(sTriangle)")
print("Периметр треугольника равен \(pTriangle)")


// Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.


var userSum : Float = 10000
var userPercent : Float = 6
userPercent = userPercent / 100
var userPeriod : Int = 5

for _ in 1...userPeriod{ // пришел к такому методу основываясь на знаниях о циклах из JavaScript
    let profit = userSum * userPercent;
    userSum = userSum + profit;
}

let stringUserPeriod = String(userPeriod) // Приведение типа данных Int в String
let stringUserSum = String(userSum)

    print("Ваши накопления спустя " + stringUserPeriod + " лет составят " + stringUserSum + "рублей");
