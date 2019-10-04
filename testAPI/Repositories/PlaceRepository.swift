//
//  PlaceRepository.swift
//  testAPI
//
//  Created by Bùi Xuân Huy on 10/3/19.
//  Copyright © 2019 huy. All rights reserved.
//

protocol PlaceRepository {
    func searchUsers(input: GetPlaceRequest) -> Observable<[Place]>
}

class PlaceRepositoryImpl: PlaceRepository {
   
    private var api: APIService!
    
    required init(api: APIService) {
        self.api = api
    }
    
    func searchUsers(input: GetPlaceRequest) -> Observable<[Place]> {
        return api.request(input: input)
            .map({ (reponse: PlaceReponse) -> [Place] in
                return reponse.places
            })
    }
    

}
