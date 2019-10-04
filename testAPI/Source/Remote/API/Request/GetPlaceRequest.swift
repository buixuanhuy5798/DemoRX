//
//  GetPlaceRequest.swift
//  testAPI
//
//  Created by Bùi Xuân Huy on 10/3/19.
//  Copyright © 2019 huy. All rights reserved.
//

class GetPlaceRequest: BaseRequest {
    
    required init() {
        super.init(url: URLs.APIGetPlace)
    }
}
