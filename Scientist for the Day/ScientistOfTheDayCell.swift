//
//  ScientistOfTheDayCell.swift
//  Scientist for the Day
//
//  Created by Deekshith Bellare on 23/09/18.
//  Copyright © 2018 Deekshith Bellare. All rights reserved.
//

import Foundation
import UIKit

class ScientistOfTheDayCell:UITableViewCell {
    
    @IBOutlet weak var nameLabel:UILabel!
    @IBOutlet weak var scientistImageView:UIImageView!
    @IBOutlet weak var lifeSpanLabel:UILabel!
    @IBOutlet weak var briefDetails:UILabel!
    
    override func awakeFromNib() {
        nameLabel.adjustsFontForContentSizeCategory = true
        nameLabel.font = UIFontMetrics.default.scaledFont(for: UIFont.georgiaBold(ofSize:16))
        
        
        briefDetails.adjustsFontForContentSizeCategory = true
        briefDetails.font = UIFontMetrics.default.scaledFont(for: UIFont.sfUITextRegular(ofSize:13))
        
        
    }
    
}
