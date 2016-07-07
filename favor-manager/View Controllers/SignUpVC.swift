//
//  SignUpVC.swift
//  favor-manager
//
//  Created by JoeB on 7/6/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class SignUpVC: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordAgainTextField: UITextField!
    
    
    override func viewDidLoad() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(EmailLogInVC.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    
    @IBAction func enterButtonPressed(sender: UIButton) {
        if emailTextField.text != "" && passwordTextField.text != "" {
            
            let email = emailTextField.text
            let password = passwordTextField.text
            
            if password == passwordAgainTextField.text {
                FIRAuth.auth()?.createUserWithEmail(email!, password: password!, completion: { (user, err) in
                    if let user = user {
                        print("user is logged in \(user)")
                        self.performSegueWithIdentifier("favorVCfromSignUp", sender: self)
                    } else {
                        print(err.debugDescription)
                    }
                })
            }
            
            
        }
    }
    
    @IBAction func backButtonapped(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
}