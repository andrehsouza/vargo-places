//
//  VUrl.swift
//  TheVargo
//
//  Created by Andre on 11/07/2018.
//  Copyright © 2018 AndreSamples. All rights reserved.
//

import Foundation
import CoreLocation

let SERVER_URL = "https://maps.googleapis.com/maps/api/place"
private let SEARCH_PARAMETERS = "radius=5000&keyword=bookstore"

enum EndPoints {
    
    case nearbysearch(location: CLLocation, pagetoken: String)
    case imageUrl(photoReference: String)
    
    var complement: String {
        switch self {
        case .nearbysearch(let location, let pagetoken):
            let nextPageString = !pagetoken.isEmpty ? "&pagetoken=\(pagetoken)" : ""
            return "/nearbysearch/json?location=\(location.coordinate.latitude),\(location.coordinate.longitude)&\(SEARCH_PARAMETERS)&key=\(Constants.PLACES_API)\(nextPageString)"
        case .imageUrl(let photoReference):
            return "\(SERVER_URL)/photo?maxwidth=600&photoreference=\(photoReference)&key=\(Constants.PLACES_API)"
        }
    }
    
}


final class VUrl {
    
    static func path(for endPoint: EndPoints) -> String {
        return "\(SERVER_URL)\(endPoint.complement)"
    }
    
}
