//
//  StorageManager.swift
//  Placenote
//
//  Created by Alexander Skrypnyk on 7/21/19.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import RealmSwift


let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        
        try! realm.write {
            realm.delete(place)
        }
    }
}
