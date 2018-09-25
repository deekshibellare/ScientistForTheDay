//
//  DayCell.swift
//  Scientist for the Day
//
//  Created by Deekshith Bellare on 23/09/18.
//  Copyright © 2018 Deekshith Bellare. All rights reserved.
//

import UIKit

class DaySectionHeaderCell:UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleBackgroundView: UIView!
    
    override func awakeFromNib() {
        titleBackgroundView.layer.cornerRadius = 3
    }
}
