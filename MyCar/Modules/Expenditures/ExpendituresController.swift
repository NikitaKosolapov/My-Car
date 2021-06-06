//
//  ExpendituresController.swift
//  My Car
//
//  Created by Nikita on 06/06/2021.
//

import UIKit

final class ExpendituresController: BaseController, ExpendituresAssemblable {

    var presenter: ExpendituresPresenterInput?
    var dataProvider: ExpendituresDataProviderDelegate?
    var showController: ShowController?

   override func viewDidLoad() {
        super.viewDidLoad()

        self.setupUI()
        self.presenter?.moduleStart()
    }
}

extension ExpendituresController: ExpendituresPresenterOutput {

}

private extension ExpendituresController {
    func setupUI() {
        if #available(iOS 13.0, *) {
            self.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 0)
        } else {
            // Fallback on earlier versions
        }
    }
}
