//
//  MainTextFieldClass.swift
//  favor-manager
//
//  Created by Vyacheslav Horbach on 07/07/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import UIKit

class MainTextFieldClass: UITextField {

    override func awakeFromNib() {
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
    }
    
    //For placeholder
    override func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, 10, 0)
    }
    
    //For editable text
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, 10, 0)
    }

}
