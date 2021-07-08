//
//  MaintenanceDetailPresenter.swift
//  My Car
//
//  Created by Nikita on 08/07/2021.
//

import UIKit

final class MaintenanceDetailPresenter {
    weak var output: MaintenanceDetailPresenterOutput?
    var dataProvider: MaintenanceDetailDataProviderInput?
    var interactor: MaintenanceDetailInteractorInput?
}

extension MaintenanceDetailPresenter: MaintenanceDetailPresenterInput {
    func moduleStart() {

    }
}

extension MaintenanceDetailPresenter: MaintenanceDetailInteractorOutput {

}

extension MaintenanceDetailPresenter: MaintenanceDetailDataProviderOutput {

}