//
//  Feed.swift
//  TheVargo
//
//  Created by Andre on 10/07/2018.
//  Copyright © 2018 AndreSamples. All rights reserved.
//

import Foundation

struct Feed: Decodable {
    
    var nextPage: String
    var results: [Place]
    
    enum CodingKeys: String, CodingKey {
        case nextPage = "next_page_token"
        case results
    }
    
}
