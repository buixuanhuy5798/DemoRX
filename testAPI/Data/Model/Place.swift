//
//  Place.swift
//  testAPI
//
//  Created by Bùi Xuân Huy on 10/3/19.
//  Copyright © 2019 huy. All rights reserved.
//

import ObjectMapper

class Place: BaseModel {
    var id: Int?
    var ten: String?
    var kinhdo: String?
    var vido: String?
    
    required init?(map: Map) { }
    
    func mapping(map: Map) {
        id <- map["id"]
        ten <- map["ten"]
        kinhdo <- map["kinh_do"]
        vido <- map["vi_do"]
    }
}

