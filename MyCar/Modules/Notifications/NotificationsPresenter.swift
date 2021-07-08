//
//  NotificationsPresenter.swift
//  My Car
//
//  Created by Nikita on 08/07/2021.
//

import UIKit

final class NotificationsPresenter {
    weak var output: NotificationsPresenterOutput?
    var dataProvider: NotificationsDataProviderInput?
    var interactor: NotificationsInteractorInput?
}

extension NotificationsPresenter: NotificationsPresenterInput {
    func moduleStart() {

    }
}

extension NotificationsPresenter: NotificationsInteractorOutput {

}

extension NotificationsPresenter: NotificationsDataProviderOutput {

}