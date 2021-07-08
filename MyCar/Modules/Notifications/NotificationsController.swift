//
//  NotificationsController.swift
//  My Car
//
//  Created by Nikita on 08/07/2021.
//

import UIKit

final class NotificationsController: BaseController, NotificationsAssemblable {

    var presenter: NotificationsPresenterInput?
    var dataProvider: NotificationsDataProviderDelegate?
    var showController: ShowController?

   override func viewDidLoad() {
        super.viewDidLoad()

        self.setupUI()
        self.presenter?.moduleStart()
    }
}

extension NotificationsController: NotificationsPresenterOutput {

}

private extension NotificationsController {
    func setupUI() {

    }
}