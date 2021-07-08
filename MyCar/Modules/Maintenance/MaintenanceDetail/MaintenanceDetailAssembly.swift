//
//  MaintenanceDetailAssembly.swift
//  My Car
//
//  Created by Nikita on 08/07/2021.
//

import Foundation

final class MaintenanceDetailAssembly {
    static func assembly(with output: MaintenanceDetailPresenterOutput) {
        let presenter = MaintenanceDetailPresenter()
        let interactor = MaintenanceDetailInteractor()
        let dataProvider = MaintenanceDetailDataProvider()

        output.presenter = presenter
        output.dataProvider = dataProvider

        presenter.output = output
        presenter.interactor = interactor
        presenter.dataProvider = dataProvider

        interactor.output = presenter
        dataProvider.presenter = presenter
    }
}