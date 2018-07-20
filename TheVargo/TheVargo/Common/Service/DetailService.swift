//
//  DetailService.swift
//  TheVargo
//
//  Created by Andre Souza on 20/07/2018.
//  Copyright © 2018 AndreSamples. All rights reserved.
//

import Foundation
import Alamofire

class DetailService: NSObject {
    
    func get(_ placeId: String, _ completion: @escaping (RequestResultType<PlaceDetail>) -> Void) {
        let url = VUrl.path(for: .detail(placeId: placeId))
        let service = APIService(with: url)
        service.getData(completion)
    }
    
}
