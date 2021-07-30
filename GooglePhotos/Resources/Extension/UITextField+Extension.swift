//
//  UITextField+Extension.swift
//  METAVITAL
//
//  Created by riddhi  on 09/02/21.
//

import Foundation
import UIKit

extension UILabel{
    func configure(textColor:UIColor?, font:UIFont?, text:String? = "", backgroundColor:UIColor? = UIColor.clear) {
        
        if let textColor = textColor {
            self.textColor = textColor
        }
        
        if let font = font {
            self.font = font
        }
        
        if let text = text {
            self.text = text
        }
        
        if let backgroundColor = backgroundColor {
            self.backgroundColor = backgroundColor
        }
    }
}
