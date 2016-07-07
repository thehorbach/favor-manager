//
//  ShowFavorsTableVC.swift
//  favor-manager
//
//  Created by Jeremy Lin on 7/6/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import UIKit

class ShowFavorsTableVC: UIViewController {
    
    @IBOutlet weak var personName: UILabel!
    @IBOutlet weak var favorName: UILabel!
    @IBOutlet weak var dueDate: UILabel!
    
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    

    

}
