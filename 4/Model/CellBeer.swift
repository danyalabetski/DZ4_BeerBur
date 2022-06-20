//
//  CellBeer.swift
//  4
//
//  Created by Даниэл Лабецкий on 17.06.22.
//

import Foundation

class CellBeer {
    
    static let Beer = CellBeer()
    
    private init() {}
    
    func cellBeer(income: Double) -> Double {
        var price: Double = 0
        price += income
        return price
    }
    
}

