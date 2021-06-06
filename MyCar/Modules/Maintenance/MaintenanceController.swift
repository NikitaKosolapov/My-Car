//
//  MaintenanceController.swift
//  My Car
//
//  Created by Nikita on 06/06/2021.
//

import UIKit

final class MaintenanceController: BaseController, MaintenanceAssemblable {

    var presenter: MaintenancePresenterInput?
    var dataProvider: MaintenanceDataProviderDelegate?
    var showController: ShowController?

   override func viewDidLoad() {
        super.viewDidLoad()

        self.setupUI()
        self.presenter?.moduleStart()
    }
}

extension MaintenanceController: MaintenancePresenterOutput {

}

private extension MaintenanceController {
    func setupUI() {
        if #available(iOS 13.0, *) {
            self.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        } else {
            // Fallback on earlier versions
        }
    }
}
