//
//  DataService.swift
//  favor-manager
//
//  Created by Jeremy Lin on 7/8/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import Foundation
import Firebase

class DataService {
    static let dataService = DataService()
    
    private var _BASE_REF = Firebase(url: "https://favor-manager.firebaseio.com/")
    private var _USER_REF = Firebase(url: "https://favor-manager.firebaseio.com//user")
    private var _FAVOR_REF = Firebase(url: "https://favor-manager.firebaseio.com/favor")
    
    var BASE_REF: Firebase {
        return _BASE_REF
    }
    
    var USER_REF: Firebase {
        return _USER_REF
    }
    
    var CURRENT_USER_REF: Firebase {
        let userID = NSUserDefaults.standardUserDefaults().valueForKey("uid") as! String
        
        let currentUser = Firebase(url: "\(BASE_REF)").childByAppendingPath("user").childByAppendingPath(userID)
        
        return currentUser!
    }
    
    var FAVOR_REF: Firebase {
        return _FAVOR_REF
    }
}