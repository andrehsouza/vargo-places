//
//  GooglePlacesInitializer.swift
//  TheVargo
//
//  Created by Andre Souza on 19/07/2018.
//  Copyright © 2018 AndreSamples. All rights reserved.
//

import Foundation
import GooglePlaces
import GoogleMaps

class GooglePlacesInitializer: Initializable {
    
    func performInitialization() {
        GMSPlacesClient.provideAPIKey(Constants.PLACES_API)
        GMSServices.provideAPIKey(Constants.PLACES_API)
    }
    
}
