//
//  UIButton+Extension.swift
//  METAVITAL
//
//  Created by riddhi  on 22/12/20.
//

import Foundation
import UIKit

public extension UIButton {
    
//    func underlineText(text: String) {
//        let colorBlue = UIColor(red: 0/255.0, green: 85.0/255.0, blue: 137.0/255.0, alpha: 1.0)
//        let attrs = [NSAttributedString.Key.foregroundColor.rawValue : colorBlue, NSAttributedStringKey.font.rawValue: UIFont.systemFont(ofSize: 15.5), NSAttributedStringKey.underlineStyle.rawValue : 1] as [AnyHashable : Any]
//        let attributeString = NSMutableAttributedString(string: text, attributes: attrs as? [NSAttributedStringKey: Any])
//        self.setAttributedTitle(attributeString, for: .normal)
//    }
//    
    func roundedBtn()  {
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = true
    }
    func configure(textColor:UIColor?, font:UIFont?, title:String? = nil, image:UIImage? = nil) {
        
        if let textColor = textColor {
            
            if buttonType == .system {
                tintColor = textColor
            }
            else{
                setTitleColor(textColor, for: .normal)
            }
        }
        
        if let font = font {
            titleLabel?.font = font
        }
        
        setTitle(title, for: .normal)
        
        if let image = image{
            setImage(image, for: .normal)
        }
    }
    func setBackgroundColor(color: UIColor, forState: UIControl.State) {
        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        UIGraphicsGetCurrentContext()!.setFillColor(color.cgColor)
        UIGraphicsGetCurrentContext()!.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
        let colorImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.setBackgroundImage(colorImage, for: forState)
    }
    
    

}

extension Double {
    var stringValue : String{
        return String(format: "%.2f", self)
    }
  
}
