//
//  GarageAssembly.swift
//  MyCar
//
//  Created by Nikita on 05.06.2021.
//

import Foundation

final class GarageAssembly {
    static func assembly(with output: GaragePresenterOutput) {
        let presenter = GaragePresenter()
        let interactor = GarageInteractor()
        let dataProvider = GarageDataProvider()

        output.presenter = presenter
        output.dataProvider = dataProvider

        presenter.output = output
        presenter.interactor = interactor
        presenter.dataProvider = dataProvider

        interactor.output = presenter

        dataProvider.presenter = presenter
    }
}
