//
//  PlaceDetail.swift
//  TheVargo
//
//  Created by Andre Souza on 20/07/2018.
//  Copyright © 2018 AndreSamples. All rights reserved.
//

import Foundation

struct PlaceDetail: Decodable {
    
    var name: String
    var address: String
    var phone: String
    var photos: Photo
    var location: Location
    var rating: Float
    
    enum CodingKeys: String, CodingKey {
        case name
        case address = "formatted_address"
        case phone = "formatted_phone_number"
        case photos
        case rating
        case location
    }
}
