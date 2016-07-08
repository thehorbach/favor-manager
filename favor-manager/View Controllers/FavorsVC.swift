//
//  ShowFavorsTableVC.swift
//  favor-manager
//
//  Created by Jeremy Lin on 7/6/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import UIKit

class FavorsVC: MainViewControllerClass {
    
    @IBOutlet weak var personName: UILabel!
    @IBOutlet weak var favorName: UILabel!
    @IBOutlet weak var dueDate: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}

extension FavorsVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    //THIS WILL CHANGE
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    //THIS WILL ALSO CHANGE WHEN WE GET DATA
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("favorCell", forIndexPath: indexPath)
        
        return cell
    }

}
