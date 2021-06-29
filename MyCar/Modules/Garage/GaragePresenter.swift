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
    private let container: CoreDataServiceInput

    private var cars: [Car] = []

    init(_ container: CoreDataServiceInput) {
        self.container = container
    }
}

extension GaragePresenter: GaragePresenterInput {
    func addNewCar(name: String) {
        let car = Car(context: container.context)
        car.name = name

        self.interactor?.saveNewCar(car)
    }

    func moduleStart() {
        self.interactor?.loadCars()
    }
}

extension GaragePresenter: GarageInteractorOutput {
    func add(_ newCar: Car) {
        self.cars.append(newCar)
        self.dataProvider?.set(cars)

        self.output?.reload()
    }

    func set(_ carModels: [Car]) {
        self.cars = carModels

        self.dataProvider?.set(carModels)
        self.output?.reload()
    }
}

extension GaragePresenter: GarageDataProviderOutput {
    func removeCar(_ car: Car) {
        if let index = cars.firstIndex(of: car) {
            cars.remove(at: index)
        }

        self.interactor?.removeCar(car)
    }
}
