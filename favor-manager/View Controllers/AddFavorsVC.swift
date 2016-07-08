//
//  AddFavorsVC.swift
//  favor-manager
//
//  Created by Jeremy Lin on 7/6/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import UIKit

class AddFavorsVC: MainViewControllerClass {
    
    @IBOutlet weak var favorTitle: UITextField!
    @IBOutlet weak var favorPerson: UITextField!
    @IBOutlet weak var favorDescription: UITextView!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    let darkColor = UIColor(red: 90.0/255.0, green: 33.0/255.0, blue: 122.0/255.0, alpha: 0.7)

    override func viewDidLoad() {
        
        favorPerson.text = ""
        favorTitle.text = ""
        favorDescription = ""
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(AddFavorsVC.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        self.datePicker.setValue(darkColor, forKey: "textColor")
        self.datePicker.sendAction("setHighlightsToday:", to: nil, forEvent: nil)
        
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    @IBAction func cancelButtonTapped(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func addButtonTapped(sender: AnyObject) {
    }

}
