//
//  UIViewController+Extension.swift
//  METAVITAL
//
//  Created by riddhi  on 17/12/20.
//

import Foundation
import Alamofire

protocol UIViewControllerReachabilityDelegate {
    func networkReachabilityChanged(status: Alamofire.NetworkReachabilityManager.NetworkReachabilityStatus)
}

extension UIViewController {

    //MARK: - Network
    func isNetworkReachable() -> Bool{
        return NetworkReachabilityManager(host: "https://www.google.com")?.isReachable ?? false
    }
    
    func setReachabilityDelegate() {
        let manager = NetworkReachabilityManager(host: "www.google.com")
        manager?.startListening(onUpdatePerforming: { (networkStatus) in
            if let controller = self as? UIViewControllerReachabilityDelegate{
                controller.networkReachabilityChanged(status: networkStatus)
            }
        })
//        NetworkReachabilityManager()?.startListening(onUpdatePerforming: { (networkReachabilityStatus) in
//            if let controller = self as? UIViewControllerReachabilityDelegate{
//                controller.networkReachabilityChanged(status: networkReachabilityStatus)
//            }
//        })
    }
}
