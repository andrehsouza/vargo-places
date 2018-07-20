//
//  LocationInitializer.swift
//  TheVargo
//
//  Created by Andre Souza on 19/07/2018.
//  Copyright © 2018 AndreSamples. All rights reserved.
//

import Foundation

class LocationInitializer: Initializable {
    
    func performInitialization() {
        LocationService.sharedInstance.startUpdatingLocation()
    }
    
}
