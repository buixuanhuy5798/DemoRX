//
//  PlaceNavigator.swift
//  testAPI
//
//  Created by Bùi Xuân Huy on 10/3/19.
//  Copyright © 2019 huy. All rights reserved.
//

protocol PlaceNavigator {
    func toListPlace()
}

final class DefaultPlaceNavigator: PlaceNavigator {
    private let navigationController: UINavigationController?
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    func toListPlace() {
        let listPlaceController = ListPlaceController.instantiate()
        navigationController?.pushViewController(listPlaceController, animated: true)
    }
    
}
