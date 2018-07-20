//
//  LocationService.swift
//  TheVargo
//
//  Created by Andre Souza on 19/07/2018.
//  Copyright © 2018 AndreSamples. All rights reserved.
//

import UIKit
import CoreLocation

class LocationService: NSObject {
    
    public static var sharedInstance = LocationService()
    let locationManager: CLLocationManager
    
    override init() {
        locationManager = CLLocationManager()
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBestForNavigation
        locationManager.distanceFilter = 5
        
        locationManager.requestWhenInUseAuthorization()
        locationManager.allowsBackgroundLocationUpdates = true
        locationManager.pausesLocationUpdatesAutomatically = false
        
        super.init()
    }
    
    func startUpdatingLocation() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager.startUpdatingLocation()
        }
    }

}
