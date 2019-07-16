//
//  TableViewController.swift
//  Placenote
//
//  Created by Alexander Skrypnyk on 7/9/19.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    let places = Place.getPlaces()
    
    // MARK: Table View
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell
        cell.nameLabel.text = places[indexPath.row].name
        cell.locationLabel.text = places[indexPath.row].location
        cell.typeLabel.text = places[indexPath.row].type
        cell.nameLabel.textColor = .white
        cell.imageCell.image = UIImage(named: places[indexPath.row].image)
        
        cell.imageCell.layer.cornerRadius = cell.imageCell.frame.size.height / 2
        cell.imageCell.clipsToBounds = true
        return cell
    }
}
