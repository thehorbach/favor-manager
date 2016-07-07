//
//  FavorsTableView.swift
//  favor-manager
//
//  Created by JoeB on 7/7/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class FavorsTableView: UITableViewController {
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("favorCell", forIndexPath: indexPath)
        
        return cell
    }
}
