//
//  CarDetailController.swift
//  My Car
//
//  Created by Nikita on 08/07/2021.
//

import UIKit

final class CarDetailController: BaseController, CarDetailAssemblable {

    var presenter: CarDetailPresenterInput?
    var dataProvider: CarDetailDataProviderDelegate?
    var showController: ShowController?

   override func viewDidLoad() {
        super.viewDidLoad()

        self.setupUI()
        self.presenter?.moduleStart()
    }
}

extension CarDetailController: CarDetailPresenterOutput {

}

private extension CarDetailController {
    func setupUI() {

    }
}