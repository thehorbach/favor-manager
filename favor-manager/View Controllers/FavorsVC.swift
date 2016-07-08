//
//  ShowFavorsTableVC.swift
//  favor-manager
//
//  Created by Jeremy Lin on 7/6/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import UIKit

class FavorsVC: MainViewControllerClass {
    
    @IBOutlet weak var tableView: UITableView!
    
    var array = [FavorData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension FavorsVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("favorCell", forIndexPath: indexPath) as! TableViewCellCustom
        let item = array[indexPath.row]
        
        cell.favorTitle.text = item.title
        cell.favorDueDateLabel.text = "\(item.dueDate)"
        cell.personNameLabel.text = item.person
        cell.favorDescription.text = item.description
        
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        
        //ASK About custom color!!!
        if editingStyle == .Delete {
            array.removeAtIndex(indexPath.row)
            tableView.reloadData()
        }
    }
}

