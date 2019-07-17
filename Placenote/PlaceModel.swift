//
//  PlaceModel.swift
//  Placenote
//
//  Created by Alexander Skrypnyk on 7/14/19.
//  Copyright © 2019 Alexander Skrypnyk. All rights reserved.
//

import UIKit


struct Place {
    
    var name: String
    var location: String?
    var type: String?
    var image: UIImage?
    var placeNames: String?
    
    static let placeNames = ["Milk Bar", "Come and Stay", "One Love Coffee", "Любимый Дядя", "Косатка", "WhiteBeard BlackBird"]
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in placeNames {
            
            places.append(Place(name: place,
                                location: "Киев",
                                type: "Кофейня",
                                image: nil,
                                placeNames: place))
        }
        
        return places
    }

}
