//
//  Favor.swift
//  favor-manager
//
//  Created by Jeremy Lin on 7/7/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import Foundation
import Firebase

class Favor {
    
    var title: String?
    var personTagged: String?
    var description: String?
    var dueDate: NSDate?
    
//    let ref = Firebase(url: "https://favor-manager.firebaseio.com/favors")
    
    func uploadFavor() {
        
        print("Uploading")
//        var newFavor = ["title": title, "personTagged": personTagged, "description": description, "dueDate": String(dueDate)]
//        var favorRef = ref.childByAppendingPath("posts")
//        var favors = [String(title): newFavor]
//        favorRef.setValue(favors)
//        
//        ref.setValue("I'm writing data", withCompletionBlock: {
//            (error:NSError?, ref:Firebase!) in
//            if (error != nil) {
//                println("Data could not be saved.")
//            } else {
//                println("Data saved successfully!")
//            }
//        })
    }
}