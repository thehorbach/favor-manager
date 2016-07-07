//
//  EmailLogInVC.swift
//  favor-manager
//
//  Created by JoeB on 7/6/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class EmailLogInVC: UIViewController{
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func enterButtonPressed(sender: UIButton) {
        if emailTextField.text != "" && passwordTextField.text != "" {
            
            FIRAuth.auth()?.signInWithEmail(emailTextField.text!, password: passwordTextField.text!, completion: { (user, err) in
                if let user = user {
                    print("user is in!!!! \(user)")
                    self.performSegueWithIdentifier("showFavorsVCfromLogIn", sender: self)
                } else {
                    print(err.debugDescription)
                }
            })
            
        }
    }
    
    
    @IBAction func backButton(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
}