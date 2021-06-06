//
//  GaragePresenter.swift
//  MyCar
//
//  Created by Nikita on 05.06.2021.
//

import Foundation

final class GaragePresenter {
    weak var output: GaragePresenterOutput?
    var interactor: GarageInteractorInput?
    var dataProvider: GarageDataProviderInput?
}

extension GaragePresenter: GaragePresenterInput {
    func moduleStart() {

    }
}

extension GaragePresenter: GarageInteractorOutput {

}

extension GaragePresenter: GarageDataProviderOutput {

}
