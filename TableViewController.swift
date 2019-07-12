//
//  TableViewController.swift
//  Placenote
//
//  Created by Alexander Skrypnyk on 7/9/19.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let placeNames = ["Milk Bar", "Come and Stay", "One Love Coffee", "Любимый Дядя", "Косатка"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Table View
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = placeNames[indexPath.row]
        cell?.textLabel?.textColor = .white
        cell?.imageView?.image = UIImage(named: placeNames[indexPath.row])
        return cell!
    }
}
