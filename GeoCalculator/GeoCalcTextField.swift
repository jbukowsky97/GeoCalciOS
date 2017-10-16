//
//  GeoCalcTextField.swift
//  GeoCalculator
//
//  Created by X Code User on 10/16/17.
//  Copyright © 2017 Jonathan Engelsma. All rights reserved.
//

import UIKit

class GeoCalcTextField: DecimalMinusTextField {

    override func awakeFromNib() {
        self.backgroundColor = UIColor.clear
        self.textColor = FOREGROUND_COLOR
        
        self.layer.borderColor = FOREGROUND_COLOR.cgColor
        self.layer.borderWidth = 1.0
        self.layer.cornerRadius = 5.0
        
        guard let ph = self.placeholder else {
            return
        }
        self.attributedPlaceholder = NSAttributedString(string: ph, attributes: [NSForegroundColorAttributeName : FOREGROUND_COLOR])
    }
}
