//
//  ViewController.swift
//  GooglePhotos
//
//  Created by Riddhi Makwana on 29/07/21.
//

import UIKit
import Lottie
class ViewController: UIViewController {

    @IBOutlet weak var viewScanAnimation: UIView!
    @IBOutlet weak var btnLogin : UIButton!
    var animationViewKeyboard : AnimationView!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadBackground()
        // Do any additional setup after loading the view.
    }

    func loadBackground(){
        viewScanAnimation.subviews.forEach({ $0.removeFromSuperview() })
        animationViewKeyboard = AnimationView(name: "69314-background")
        animationViewKeyboard.frame = viewScanAnimation.bounds
//        animationViewKeyboard.contentMode = .center
        animationViewKeyboard.loopMode = .loop
        viewScanAnimation.addSubview(animationViewKeyboard)
        animationViewKeyboard.play()
        viewScanAnimation.layoutIfNeeded()
    }

}

