//
//  SideMenuVC.swift
//  Fabricycle
//
//  Created by Slin on 2017/9/16.
//  Copyright © 2017年 zip520123. All rights reserved.
//

import UIKit
import LGSideMenuController
class SideMenuVC: LGSideMenuController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let regularStyle: UIBlurEffectStyle

        
        if #available(iOS 10.0, *) {
            regularStyle = .regular
        }
        else {
            regularStyle = .light
        }

        leftViewCoverBlurEffect = UIBlurEffect(style: .regular)
        leftViewBackgroundBlurEffect = UIBlurEffect(style: regularStyle)

    }

    override func leftViewWillLayoutSubviews(with size: CGSize) {
        super.leftViewWillLayoutSubviews(with: size)
        
        if !isLeftViewStatusBarHidden {
            leftView?.frame = CGRect(x: 0.0, y: 20.0, width: size.width, height: size.height - 20.0)
        }
    }
    
    override func hideLeftView() {
        UIApplication.shared.isStatusBarHidden = false
    }
    override func showLeftView() {
        UIApplication.shared.isStatusBarHidden = true
    }
    
    
    
    override var isLeftViewStatusBarHidden: Bool {
        get {

            
            return super.isLeftViewStatusBarHidden
        }
        
        set {
            super.isLeftViewStatusBarHidden = newValue
        }
    }
    
}
