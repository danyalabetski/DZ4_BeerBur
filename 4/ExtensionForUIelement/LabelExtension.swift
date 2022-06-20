//
//  LabelProtocol.swift
//  4
//
//  Created by Даниэл Лабецкий on 17.06.22.
//

import Foundation
import UIKit

extension UILabel {
    
    func createLabel(labelPositionX: Double, labelPositionY: Double, labelWidth: Double, labelHeight: Double, labelTilte: String) {
        let label = self
        label.frame = CGRect(x: labelPositionX, y: labelPositionY, width: labelWidth, height: labelHeight)
        label.text = labelTilte 
        label.backgroundColor = UIColor.white
        label.textColor = UIColor.black
    }
    

}
