//
//  Constants.swift
//  GooglePhotos
//
//  Created by Riddhi Makwana on 30/07/21.
//

import Foundation
import UIKit


enum Colors {
    static let background = UIColor(named: "background")
//    static let primary = UIColor(named:"primary")
//    static let primaryText = UIColor(named:"primaryText")
//    static let secondaryText = UIColor(named:"secondaryText")
//    static let border = UIColor(named: "border")
}

public func loadVC(strStoryboardId: String, strVCId: String) -> UIViewController {
    let vc = getStoryboard(storyboardName: strStoryboardId).instantiateViewController(withIdentifier: strVCId)
    return vc
}

public func getStoryboard(storyboardName: String) -> UIStoryboard {
    return UIStoryboard(name: storyboardName, bundle: nil)
}
