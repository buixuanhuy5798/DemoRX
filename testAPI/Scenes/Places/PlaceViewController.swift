//
//  PlaceViewController.swift
//  testAPI
//
//  Created by Bùi Xuân Huy on 10/3/19.
//  Copyright © 2019 huy. All rights reserved.
//

class PlaceViewController: BaseUIViewController {
    
    @IBOutlet weak var nextButton: UIButton!
    var viewModel: PlaceViewModel!
    private let disposeBag = DisposeBag()
    
    private let placeRepository: PlaceRepository = PlaceRepositoryImpl(api: APIService.share)
    
    override func viewDidLoad() {
        let navigator = DefaultPlaceNavigator(navigationController: self.navigationController)
        viewModel = PlaceViewModel(placeRepository: placeRepository, navigator: navigator)
        let input = PlaceViewModel.Input(getPlaceTrigger: nextButton.rx.tap.asDriver())
        let output = viewModel.transform(input: input)
    }
}
