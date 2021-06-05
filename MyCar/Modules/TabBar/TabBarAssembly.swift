//
//  TabBarAssembly.swift
//  MyCar
//
//  Created by Nikita on 12.05.2021.
//

import Foundation

final class TabBarAssembly {
    static func assembly(with output: TabBarPresenterOutput) {
        let presenter = TabBarPresenter()
        let interactor = TabBarInteractor()

        output.presenter = presenter
        presenter.output = output
        presenter.interactor = interactor
        interactor.output = presenter
    }
}
