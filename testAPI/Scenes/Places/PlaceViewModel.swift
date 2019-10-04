//
//  PlaceViewModel.swift
//  testAPI
//
//  Created by Bùi Xuân Huy on 10/3/19.
//  Copyright © 2019 huy. All rights reserved.
//

final class PlaceViewModel: ViewModelType {
    
    private let placeRepository: PlaceRepository
    private let navigator: PlaceNavigator
    
    init(placeRepository: PlaceRepository, navigator: PlaceNavigator) {
        self.navigator = navigator
        self.placeRepository = placeRepository
    }
    
    func transform(input: PlaceViewModel.Input) -> PlaceViewModel.Output {
        let next = input.getPlaceTrigger
            .drive(onNext: { (_) in
            self.navigator.toListPlace()
        })
        return PlaceViewModel.Output()
    }
}

extension PlaceViewModel {
    struct Input {
        let getPlaceTrigger: Driver<Void>
    }
    
    struct Output {
    }
}
