//
//  ButtonExtension.swift
//  4
//
//  Created by Даниэл Лабецкий on 17.06.22.
//

import Foundation
import UIKit

extension UIButton {
    
    func createButton(buttonPositionX: Double, buttonPositionY: Double, buttonWidth: Double, buttonHeight: Double, buttonTitle: String) {
        let button = self
        button.frame = CGRect(x: buttonPositionX, y: buttonPositionY, width: buttonWidth, height: buttonHeight)
        button.setTitle(buttonTitle, for: .normal)
        button.backgroundColor = UIColor.black
        button.tintColor = UIColor.white
        button.layer.cornerRadius = 15
    }
    
}
