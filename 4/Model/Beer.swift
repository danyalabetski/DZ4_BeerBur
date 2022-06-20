//
//  Beer.swift
//  4
//
//  Created by Даниэл Лабецкий on 17.06.22.
//

import Foundation

class Beer {
    
    var name: String
    var price: Double
    var country: String
    var remainingVolume: Double
    
    init(name: String, price: Double, county: String, remainingVolume: Double) {
        self.name = name
        self.price = price
        self.country = county
        self.remainingVolume = remainingVolume
    }
    
}
