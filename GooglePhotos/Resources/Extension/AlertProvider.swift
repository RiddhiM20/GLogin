//
//  AlertProvider.swift
//  METAVITAL
//
//  Created by macOS on 20/10/20.
//

import Foundation
import UIKit

class AlertProvider {
    
    var _vc: UIViewController?
    var _tvc: UIViewController?
    
    init(vc: UIViewController) {
        self._vc = vc
        self._tvc = nil
    }
    
    init(tvc: UITableViewController) {
        self._vc = nil
        self._tvc = tvc
    }
    
    
    // Simple Alert
    func showAlert(title: String, message: String, okTitle:String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: okTitle, style: .default, handler: nil))
        
        if _vc != nil {
            _vc?.present(alertController, animated: true, completion: nil)
        } else {
            _tvc?.present(alertController, animated: true, completion: nil)
        }
    }
}
