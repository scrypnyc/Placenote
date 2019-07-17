//
//  AddPlaceViewController.swift
//  Placenote
//
//  Created by Alexander Skrypnyk on 7/16/19.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import UIKit

class AddPlaceViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: TableView Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            
        } else {
            view.endEditing(true)
        }
    }
}



// MARK: TextField Delegate

extension AddPlaceViewController: UITextFieldDelegate {
    
    // Hide keyboard - DONE
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    }

