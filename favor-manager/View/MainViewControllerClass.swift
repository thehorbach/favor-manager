//
//  MainViewControllerClass.swift
//  favor-manager
//
//  Created by Vyacheslav Horbach on 07/07/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import UIKit

class MainViewControllerClass: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
      self.view.layer.cornerRadius = 10
      self.view.layer.masksToBounds = true
    
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
