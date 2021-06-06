//
//  ExpendituresAssembly.swift
//  My Car
//
//  Created by Nikita on 06/06/2021.
//

import Foundation

final class ExpendituresAssembly {
    static func assembly(with output: ExpendituresPresenterOutput) {
        let presenter = ExpendituresPresenter()
        let interactor = ExpendituresInteractor()
        let dataProvider = ExpendituresDataProvider()

        output.presenter = presenter
        output.dataProvider = dataProvider

        presenter.output = output
        presenter.interactor = interactor
        presenter.dataProvider = dataProvider

        interactor.output = presenter
        dataProvider.presenter = presenter
    }
}
