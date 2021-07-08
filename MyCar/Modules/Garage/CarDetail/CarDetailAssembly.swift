//
//  CarDetailAssembly.swift
//  My Car
//
//  Created by Nikita on 08/07/2021.
//

import Foundation

final class CarDetailAssembly {
    static func assembly(with output: CarDetailPresenterOutput) {
        let presenter = CarDetailPresenter()
        let interactor = CarDetailInteractor()
        let dataProvider = CarDetailDataProvider()

        output.presenter = presenter
        output.dataProvider = dataProvider

        presenter.output = output
        presenter.interactor = interactor
        presenter.dataProvider = dataProvider

        interactor.output = presenter
        dataProvider.presenter = presenter
    }
}