//
//  GaragePresenter.swift
//  MyCar
//
//  Created by Nikita on 05.06.2021.
//

import Foundation
import CoreData

final class GaragePresenter {
    weak var output: GaragePresenterOutput?
    var interactor: GarageInteractorInput?
    var dataProvider: GarageDataProviderInput?
    private let cars: [Car] = []
}

extension GaragePresenter: GaragePresenterInput {
    func addCar(name: String) {
        self.interactor?.addNewCar(name: name)
    }

    func moduleStart() {
        self.interactor?.loadCars()
    }
}

extension GaragePresenter: GarageInteractorOutput {
    func set(_ carModels: [Car]) {
        self.dataProvider?.set(carModels)
    }
}

extension GaragePresenter: GarageDataProviderOutput {

}
