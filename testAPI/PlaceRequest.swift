//
//  PlaceService.swift
//  TestRx
//
//  Created by Bùi Xuân Huy on 10/1/19.
//  Copyright © 2019 huy. All rights reserved.
//

import Alamofire
import ObjectMapper
import AlamofireObjectMapper
import RxSwift

class PlaceRequest {
    static func getPlace() -> Observable<[Place]> {
        return Observable.create({ observable -> Disposable in
            let request = Alamofire.request(APIUrl.placeUrl).responseObject { (reponse: DataResponse<AllPlace>) in
                if let places = reponse.value {
                    observable.onNext(places.places!)
                    observable.onCompleted()
                }
            }
            return Disposables.create {
                request.cancel()
            }
        })
    }
}



