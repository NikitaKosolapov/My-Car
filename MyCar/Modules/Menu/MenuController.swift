//
//  MenuController.swift
//  My Car
//
//  Created by Nikita on 06/06/2021.
//

import UIKit

final class MenuController: BaseController, MenuAssemblable {

    var presenter: MenuPresenterInput?
    var dataProvider: MenuDataProviderDelegate?
    var showController: ShowController?

   override func viewDidLoad() {
        super.viewDidLoad()

        self.setupUI()
        self.presenter?.moduleStart()
    }
}

extension MenuController: MenuPresenterOutput {

}

private extension MenuController {
    func setupUI() {

    }
}
