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
    var address: String?
    var phone: String?
    
    enum CodingKeys: String, CodingKey {
        case address = "formatted_address"
        case phone = "formatted_phone_number"
    }
    
}

extension Place: PlaceItemInterface {

    var title: String? {
        return self.name
    }
    
    var imageURL: String? {
        return photos?[0].photo_reference
    }
        
}

extension Place: PlaceDetailInterface {
    
    var location: Location? {
        return geometry?.location
    }
    
}
