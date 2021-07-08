//
//  NotificationsAssembly.swift
//  My Car
//
//  Created by Nikita on 08/07/2021.
//

import Foundation

final class NotificationsAssembly {
    static func assembly(with output: NotificationsPresenterOutput) {
        let presenter = NotificationsPresenter()
        let interactor = NotificationsInteractor()
        let dataProvider = NotificationsDataProvider()

        output.presenter = presenter
        output.dataProvider = dataProvider

        presenter.output = output
        presenter.interactor = interactor
        presenter.dataProvider = dataProvider

        interactor.output = presenter
        dataProvider.presenter = presenter
    }
}