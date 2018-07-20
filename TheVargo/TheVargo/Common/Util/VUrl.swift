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
    case detail(placeId: String)
    
    var complement: String {
        switch self {
        case .nearbysearch(let location, let pagetoken):
            let nextPageString = !pagetoken.isEmpty ? "&pagetoken=\(pagetoken)" : ""
            return "/nearbysearch/json?location=\(location.coordinate.latitude),\(location.coordinate.longitude)&\(SEARCH_PARAMETERS)\(nextPageString)"
        case .imageUrl(let photoReference):
            return "/photo?maxwidth=600&photoreference=\(photoReference)"
        case .detail(let placeId):
            return "/details/json?placeid=\(placeId)"
        }
    }
    
}


final class VUrl {
    
    static func path(for endPoint: EndPoints) -> String {
        return "\(SERVER_URL)\(endPoint.complement)&key=\(Constants.PLACES_API)"
    }
    
}
