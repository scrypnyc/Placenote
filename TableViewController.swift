//
//  TableViewController.swift
//  Placenote
//
//  Created by Alexander Skrypnyk on 7/9/19.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let placeNames = ["Milk Bar", "Come and Stay", "One Love Coffee", "Любимый Дядя", "Косатка", "WhiteBeard BlackBird"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Table View
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell
        cell.nameLabel.text = placeNames[indexPath.row]
        cell.nameLabel.textColor = .white
        cell.imageCell.image = UIImage(named: placeNames[indexPath.row])
        cell.imageCell.layer.cornerRadius = cell.imageCell.frame.size.height / 2
        cell.imageCell.clipsToBounds = true
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
}
