//
//  FeedService.swift
//  TheVargo
//
//  Created by Andre Souza on 11/07/2018.
//  Copyright © 2018 AndreSamples. All rights reserved.
//

import Foundation
import Alamofire
import CoreLocation

class FeedService: NSObject {
    
    func get(_ location: CLLocation, _ pagetoken: String, _ completion: @escaping (RequestResultType<Feed>) -> Void) {
        let url = VUrl.path(for: .nearbysearch(location: location, pagetoken: pagetoken))
        let service = APIService(with: url)
        service.getData(completion)
    }
    
}
