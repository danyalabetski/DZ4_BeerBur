import UIKit

var num = [2.5, 9.7, 6.9, 8.2]

//MARK: -  Задание: посчитать сумму отдельно целых и отдельно дробных частей чисел 2.5, 9.7, 6.9, 8.2

var one: Int = Int(2.5)
var two: Int = Int(9.7)
var three: Int = Int(6.9)
var four: Int = Int(8.2)
var sum = one + two + three + four
//print(sum)

//--------------------------------------------------------------------------------------------------------------------

var sumTwo = 0

for i in num {
    sumTwo += Int(i)
}

//print(sumTwo)

//--------------------------------------------------------------------------------------------------------------------

func sumNumberInt(array: [Double]) -> Int {
    
    var SumThree = 0
    
    for i in array {
        SumThree += Int(i)
    }
    
    return SumThree
}

//var number = sumNumberInt(array: num)
//print(number)

//--------------------------------------------------------------------------------------------------------------------

// Сложение дробных чисел

func sumNumberDouble(array: [Double]) -> Double {
    
    var SumThree = 0.0
    
    for i in array {
        SumThree += i
    }
    
    return SumThree
}

//var number = sumNumberDouble(array: num)
//print(number)

//--------------------------------------------------------------------------------------------------------------------

var funcReduce = num.reduce(0) { partialResult, numr in
    Int(partialResult) + Int(numr)
}
//print(funcReduce)
//--------------------------------------------------------------------------------------------------------------------

var funcProgramming = num.reduce(0, +)
//print(funcProgramming)

//--------------------------------------------------------------------------------------------------------------------

//MARK: - Задание: cделать проверку является ли число четным: 13, 2, 20, 21, 76

let numberArray = [13, 2, 20, 21, 76]
var result = [Int]()

for allNumInArray in numberArray {
        
    if allNumInArray % 2 == 0 {
        result.append(allNumInArray)
    }
}
//print(result)

//--------------------------------------------------------------------------------------------------------------------

let numberZero = numberArray.map { number in
    number % 2 == 0
}
//print(numberZero)

//--------------------------------------------------------------------------------------------------------------------

let numberOne = numberArray.map { number in
    number.isMultiple(of: 2)
}
//print(numberOne)

//--------------------------------------------------------------------------------------------------------------------

let numberTwo = numberArray.map { $0 % 2 == 0 }
//print(numberTwo)

//--------------------------------------------------------------------------------------------------------------------


