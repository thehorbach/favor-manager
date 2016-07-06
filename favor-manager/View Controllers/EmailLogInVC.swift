//
//  EmailLogInVC.swift
//  favor-manager
//
//  Created by JoeB on 7/6/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import Foundation
import UIKit

class EmailLogInVC: UIViewController{
    
    
    @IBAction func backButton(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
}