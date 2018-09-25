//
//  ScientistListingController.swift
//  Scientist for the Day
//
//  Created by Deekshith Bellare on 23/09/18.
//  Copyright © 2018 Deekshith Bellare. All rights reserved.
//

import UIKit

class ScientistListingController: UIViewController {
    
    @IBOutlet weak var scientistTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scientistTableView.estimatedRowHeight = 80
        scientistTableView.rowHeight = UITableView.automaticDimension
    }
}

extension ScientistListingController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "scientistOfTheDay", for: indexPath)
        return cell
    }
}

extension ScientistListingController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 90
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "header") as! DaySectionHeaderCell
        cell.titleLabel.text = "Today"
        return cell
    }
}
