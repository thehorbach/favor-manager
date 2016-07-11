//
//  ShowFavorsTableVC.swift
//  favor-manager
//
//  Created by Jeremy Lin on 7/6/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import UIKit
import Firebase

class FavorsVC: MainViewControllerClass {
    
    @IBOutlet weak var tableView: UITableView!
    
    var array = [FavorData]()
    
    let postRef = FIRDatabase.database().reference().child("favor")
    
    override func viewWillAppear(animated: Bool) {

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
        let refHandle = postRef.observeEventType(FIRDataEventType.Value, withBlock: { (snapshot) in
            
            if let postDict = snapshot.children.allObjects as? [FIRDataSnapshot] {
                for post in postDict {
                    if let post = post.value as? Dictionary<String, String> {
                        
                        let specificPost = FavorData(post: post)
                        self.array.append(specificPost)
                        
                    }
                }
            }
            self.tableView.reloadData()
        })
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
        
        
     /*   //ASK About custom color!!!
        if editingStyle == .Delete {
            array.removeAtIndex(indexPath.row)
            tableView.reloadData()
        }*/
    }
}

