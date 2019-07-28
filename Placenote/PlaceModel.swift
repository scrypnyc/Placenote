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
}
