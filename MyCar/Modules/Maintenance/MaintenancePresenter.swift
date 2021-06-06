//
//  MaintenancePresenter.swift
//  My Car
//
//  Created by Nikita on 06/06/2021.
//

import UIKit

final class MaintenancePresenter {
    weak var output: MaintenancePresenterOutput?
    var dataProvider: MaintenanceDataProviderInput?
    var interactor: MaintenanceInteractorInput?
}

extension MaintenancePresenter: MaintenancePresenterInput {
    func moduleStart() {

    }
}

extension MaintenancePresenter: MaintenanceInteractorOutput {

}

extension MaintenancePresenter: MaintenanceDataProviderOutput {

}
