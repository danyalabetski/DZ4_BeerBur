import UIKit

//MARK: - 1. Функции сложения, вычитания, умножения и деления (перегрузка функций)

func funcOverload<T: Numeric>(paramOne: T, paramTwo: T) -> T? {
    paramOne + paramTwo
}

func funcOverload<T: Numeric>(paramThree: T, paramFour: T) -> T? {
    paramThree - paramFour
}

func funcOverload<T: Numeric>(paramFive: T, paramSix: T) -> T? {
    paramFive * paramSix
}

///Созданик протокола необходимо для использования его в функции вернее подписать функцию на протокол, т.к дженерики не потдерживают бинарный оператор деления
protocol division {
    static func /(lhs: Self, rhs: Self) -> Self
}

func funcOverload<T: division>(paramSeven: T, paramEight: T) -> T? {
    paramSeven / paramEight
}

funcOverload(paramOne: 10, paramTwo: 10)
funcOverload(paramThree: 20, paramFour: 10)
funcOverload(paramFive: 10, paramSix: 10)

extension Int: division {}
extension Float: division {}
extension Double: division {}

funcOverload(paramSeven: 100, paramEight: 10)

//MARK: - 2. Вычислить сумму цифр четырехзначного числа 4263

func digitSum(of number: Int) -> Int {
    
    if (number < 10) { return number } else {
        return number % 10 + digitSum(of: (number/10))
    }
}

digitSum(of: 4263)

//MARK: - 3. Функция сравнения строк - "авбва" больше "ввш"

func stringСomparison(stringOne: String, stringTwo: String) {
    
    if stringOne.count < stringTwo.count {
        print("\(stringOne) меньше чем \(stringTwo)")
    } else if stringOne.count > stringTwo.count {
        print("\(stringOne) больше чем \(stringTwo)")
    } else if stringOne.count == stringTwo.count {
        print("\(stringOne) == \(stringTwo)")
    }
    
}

//stringСomparison(stringOne: "авбва", stringTwo: "ввш")

//MARK: - 4. Циклический вызов функций - поломать приложение*

func breakdownFunc()  {
    
    var number = 0
    
    for _ in 0... {
        number += 1
    }
}

//breakdownFunc()

//MARK: - 5. Функция возведения в степень с дефолтным параметром

func Exponentiation(number: Double = 10) {
    
    print("\(number * number)")
}

//Exponentiation()

//MARK: - 6. Функция вычисления факториала числа

func factorial(_ param: Int) -> Int{
    
    if param < 1 {
        return 1
    } else {
        return param * factorial(param - 1)
    }
}

factorial(4)
