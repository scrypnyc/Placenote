//
//  PlaceModel.swift
//  Placenote
//
//  Created by Alexander Skrypnyk on 7/14/19.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import RealmSwift


class Place: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?

    
    let placeNames = ["Milk Bar", "Come and Stay", "One Love Coffee", "Любимый Дядя", "Косатка", "WhiteBeard BlackBird"]
    
    func savePlaces() {
        
        for place in placeNames {
            
            let image = UIImage(named: place)
            guard let imageData = image?.pngData() else { return }
            
            let newPlace = Place()
            
            newPlace.name = place
            newPlace.location = "Kyiv"
            newPlace.type = "Place"
            newPlace.imageData = imageData
            
            StorageManager.saveObject(newPlace)
        }
    }
}
