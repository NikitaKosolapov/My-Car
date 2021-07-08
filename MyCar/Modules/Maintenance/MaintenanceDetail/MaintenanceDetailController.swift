//
//  MaintenanceDetailController.swift
//  My Car
//
//  Created by Nikita on 08/07/2021.
//

import UIKit

final class MaintenanceDetailController: BaseController, MaintenanceDetailAssemblable {

    var presenter: MaintenanceDetailPresenterInput?
    var dataProvider: MaintenanceDetailDataProviderDelegate?
    var showController: ShowController?

   override func viewDidLoad() {
        super.viewDidLoad()

        self.setupUI()
        self.presenter?.moduleStart()
    }
}

extension MaintenanceDetailController: MaintenanceDetailPresenterOutput {

}

private extension MaintenanceDetailController {
    func setupUI() {

    }
}