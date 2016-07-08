//
//  MainTextViewClass.swift
//  favor-manager
//
//  Created by Vyacheslav Horbach on 07/07/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import UIKit

class MainTextViewClass: UITextView {

    override func awakeFromNib() {
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
        
        self.textColor = UIColor(red: 90.0/255.0, green: 33.0/255.0, blue: 122.0/255.0, alpha: 0.7)
    }
    
    //For placeholder
    func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, 10, 0)
    }
    
    //For editable text
    func editingRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, 10, 0)
    }

}
