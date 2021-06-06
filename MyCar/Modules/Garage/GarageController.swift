//
//  GarageController.swift
//  MyCar
//
//  Created by Nikita on 05.06.2021.
//

import Foundation

import UIKit

final class GarageController: BaseController, GarageAssemblable {
    var showController: ShowController?
    var presenter: GaragePresenterInput?
    var dataProvider: GarageDataProviderDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        self.presenter?.moduleStart()
    }
}

extension GarageController: GaragePresenterOutput {

}

private extension GarageController {
    func setupUI() {

    }
}
