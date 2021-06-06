//
//  MaintenanceAssembly.swift
//  My Car
//
//  Created by Nikita on 06/06/2021.
//

import Foundation

final class MaintenanceAssembly {
    static func assembly(with output: MaintenancePresenterOutput) {
        let presenter = MaintenancePresenter()
        let interactor = MaintenanceInteractor()
        let dataProvider = MaintenanceDataProvider()

        output.presenter = presenter
        output.dataProvider = dataProvider

        presenter.output = output
        presenter.interactor = interactor
        presenter.dataProvider = dataProvider

        interactor.output = presenter
        dataProvider.presenter = presenter
    }
}
