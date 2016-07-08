//
//  FirstVC.swift
//  favor-manager
//
//  Created by Vyacheslav Horbach on 07/07/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import UIKit
import Firebase
import FBSDKCoreKit
import FBSDKLoginKit

class FirstVC: UIViewController {
    
    @IBOutlet weak var facebookButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func facebookButtonPressed (sender: AnyObject?) {
        let login: FBSDKLoginManager = FBSDKLoginManager()
        
        login.logInWithReadPermissions(["public_profile"], fromViewController: self, handler: {(result: FBSDKLoginManagerLoginResult!, error: NSError!) -> Void in
            
            if error != nil {
                print("Process error")
            }
            else if result.isCancelled {
                print("Cancelled")
            }
            else {
                print("Logged in")
            }
            
        })
    }
    

}

