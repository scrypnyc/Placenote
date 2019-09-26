//
//  TableViewController.swift
//  Placenote
//
//  Created by Alexander Skrypnyk on 7/9/19.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import UIKit
import RealmSwift

class TableViewController: UITableViewController {
    
    
    @IBOutlet weak var sortingButton: UIBarButtonItem!
    
    var places: Results<Place>!
    var ascendingSorting = true

    override func viewDidLoad() {
        super.viewDidLoad()
        
        places = realm.objects(Place.self)
    }
    
    
    // MARK: Table View
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.isEmpty ? 0 : places.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell

        let place = places[indexPath.row]

        cell.nameLabel.text = place.name
        cell.locationLabel.text = place.location
        cell.typeLabel.text = place.type
        cell.imageCell.image = UIImage(data: place.imageData!)


        cell.imageCell.layer.cornerRadius = cell.imageCell.frame.size.height / 2
        cell.imageCell.clipsToBounds = true
        return cell
    }
    
    // MARK: TableView Delegate
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let place = places[indexPath.row]
        let deleteAction = UITableViewRowAction(style: .default, title: "Delete") { (_, _) in
            
            
            StorageManager.deleteObject(place)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        
        return [deleteAction]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            let place = places[indexPath.row]
            let newPlaceVC = segue.destination as! AddPlaceViewController
            newPlaceVC.currentPlace = place
        }
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        
        guard let newPlaceVC = segue.source as? AddPlaceViewController else { return }
        
        newPlaceVC.savePlace()
        tableView.reloadData()
        }
    
    @IBAction func reverseSorting(_ sender: Any) {
        
        ascendingSorting.toggle()
        sorting()
    }
    
    private func sorting() {

        tableView.reloadData()
    }
}
