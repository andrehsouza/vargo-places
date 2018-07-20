//
//  Place.swift
//  TheVargo
//
//  Created by Andre Souza on 20/07/2018.
//  Copyright © 2018 AndreSamples. All rights reserved.
//

import Foundation

struct Place: Decodable {
    
    var place_id: String?
    var name: String?
    var geometry: Geometry?
    var rating: Float?
    var photos: [Photo]?
    
}

extension Place: PlaceItemInterface {

    var title: String? {
        return self.name
    }
    
    var imageURL: String? {
        return photos?[0].photo_reference
    }
        
}
