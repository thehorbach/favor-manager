//
//  TableViewCell.swift
//  favor-manager
//
//  Created by JoeB on 7/7/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import Foundation
import Firebase
import UIKit

class TableViewCellCustom: UITableViewCell {
    
    @IBOutlet weak var personNameLabel: UILabel!
    @IBOutlet weak var favorTitle: UILabel!
    @IBOutlet weak var favorDueDateLabel: UILabel!
    @IBOutlet weak var favorDescription: UITextView!

    override func awakeFromNib() {
         self.selectionStyle = UITableViewCellSelectionStyle.None
    }
    
}
