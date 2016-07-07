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
    @IBOutlet weak var tableView: UITableView!
    
    
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
}

extension ShowFavorsTableVC: UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Table view data source
    
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
//        let post = posts[indexPath.row]
//        cell.textLabel?.text = "\(post.item1!) + \(post.item2!)"
//        cell.detailTextLabel?.text = "Likes: \(post.likes)"
        
        return cell
    }

}
