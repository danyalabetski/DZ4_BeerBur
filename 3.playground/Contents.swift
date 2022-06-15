import UIKit

//MARK: - Дан массив, элементы которого это картеж с типами данных Int и String. Необходимо:
// 1 - Возвести Int в квадрат
// 2 - Отфильтровать только четные элементы
// 3 - Упорядочить строки по алфовитному возрастания, можно обозначить буква на любом языке.

var array = [(1, "Б"), (2, "А"), (3, "Г"), (4, "В"), (5, "Е"), (6, "Д"), (7, "З"), (8, "И"), (9, "Ж")]
    
let result = array.map { (num, str) -> Int in
    let reslt = num * num
    return reslt
}

print(result)

let dsfd = result.filter{ $0 % 2 == 0 }
print(dsfd)


let sort = array.sorted(by: { $0.1 < $1.1 })
print(sort)


