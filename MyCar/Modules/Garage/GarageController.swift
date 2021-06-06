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

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
}

extension GarageController: GaragePresenterOutput {

}

private extension GarageController {
    func setupUI() {

    }
}
