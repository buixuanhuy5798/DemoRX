//
//  AllPlace.swift
//  testAPI
//
//  Created by Bùi Xuân Huy on 10/3/19.
//  Copyright © 2019 huy. All rights reserved.
//

import ObjectMapper

class AllPlace: BaseModel {
    var success: Int?
    var places: [Place]?
    required init?(map: Map) {
    }
    func mapping(map: Map) {
        success <- map["success"]
        places <- map["data"]
    }
}
