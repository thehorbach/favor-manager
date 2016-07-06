//
//  SignUpVC.swift
//  favor-manager
//
//  Created by JoeB on 7/6/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import Foundation
import UIKit

class SignUpVC: UIViewController {
    
    @IBAction func enterButtonPressed(sender: UIButton) {
        
    }
    
    @IBAction func backButtonapped(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
}