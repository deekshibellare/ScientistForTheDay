//
//  ScientistListingController.swift
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
class ScientistListingController: UIViewController {
    
    @IBOutlet weak var scientistTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scientistTableView.estimatedRowHeight = 80
        scientistTableView.rowHeight = UITableView.automaticDimension
        // Do any additional setup after loading the view, typically from a nib.
    }
}

extension ScientistListingController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionHeader", for: indexPath)
        
        return cell
        
    }
    
    
}
