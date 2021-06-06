//
//  GarageInteractor.swift
//  MyCar
//
//  Created by Nikita on 05.06.2021.
//

import Foundation
import CoreData

final class GarageInteractor {
    weak var output: GarageInteractorOutput?
    private let container: CoreDataServiceInput

    init(_ container: CoreDataServiceInput) {
        self.container = container
    }
}

extension GarageInteractor: GarageInteractorInput {
    func addNewCar(name: String) {
        let car = Car(context: self.container.context)
        car.name = name

        container.saveContext(
            onSuccess: { [weak self] in
                self?.output?.set([car])
            },
            onError: { [weak self] error in
                print(error)
            })
    }

    func loadCars() {
        container.fetch(entityName: Car.nameOfClass(),
                        onSuccess: { [weak self] carModels in
                            self?.output?.set(carModels)
                        },
                        onError: { [weak self] error in
                            print(error)
                        }
        )}
}
