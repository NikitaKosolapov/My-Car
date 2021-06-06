//
//  MenuAssembly.swift
//  My Car
//
//  Created by Nikita on 06/06/2021.
//

import Foundation

final class MenuAssembly {
    static func assembly(with output: MenuPresenterOutput) {
        let presenter = MenuPresenter()
        let interactor = MenuInteractor()
        let dataProvider = MenuDataProvider()

        output.presenter = presenter
        output.dataProvider = dataProvider

        presenter.output = output
        presenter.interactor = interactor
        presenter.dataProvider = dataProvider

        interactor.output = presenter
        dataProvider.presenter = presenter
    }
}
