//
//  Favor.swift
//  favor-manager
//
//  Created by Jeremy Lin on 7/7/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import Foundation
import Firebase

class FavorData {
    
    private var _title: String!
    private var _person: String!
    private var _description: String!
    private var _dueDate: String!
    private var _key: String!
    
 //   private var _favorRef: Firebase!
    
    var title: String! {
        return _title
    }
    
    var description: String! {
        return _description
    }
    
    var dueDate: String! {
        return _dueDate
    }
    
    var person: String! {
        return _person
    }
    
    init(title: String, person: String, description: String, dueDate: String) {
        self._title = title
        self._person = person
        self._description = description
        self._dueDate = dueDate
    }
    
    init(post: Dictionary<String, String>) {
        self._title = post["favorTag"]
        self._person = post["favorName"]
        self._description = post["favorDescription"]
        self._dueDate = post["favorDue"]
    }
    
    
}

