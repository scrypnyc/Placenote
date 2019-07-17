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
    
    var places = Place.getPlaces()
    
    // MARK: Table View
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell
        
        let place = places[indexPath.row]
        
        cell.nameLabel.text = place.name
        cell.locationLabel.text = place.location
        cell.typeLabel.text = place.type
        
        if place.image == nil {
            cell.imageCell.image = UIImage(named: place.placeNames!)
        } else {
            cell.imageCell.image = place.image
        }
        
        
        cell.imageCell.layer.cornerRadius = cell.imageCell.frame.size.height / 2
        cell.imageCell.clipsToBounds = true
        return cell
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        
        guard let newPlaceVC = segue.source as? AddPlaceViewController else { return }
        
        newPlaceVC.saveNewPlace()
        places.append(newPlaceVC.newPlace!)
        tableView.reloadData()
        }
    }
