//
//  PlaceReponse.swift
//  testAPI
//
//  Created by Bùi Xuân Huy on 10/3/19.
//  Copyright © 2019 huy. All rights reserved.
//

import ObjectMapper

class PlaceReponse: Mappable {
    
    var message: String?
    var places = [Place]()
    
    required init?(map: Map) {
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        message <- map["message"]
        places <- map["data"]
    }
    
}
