//
//  EmailLogInVC.swift
//  favor-manager
//
//  Created by JoeB on 7/6/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import UIKit
import Firebase

class EmailLogInVC: MainViewControllerClass{
    
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
    override func viewDidLoad() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(EmailLogInVC.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    @IBAction func backButton(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }    
}