//
//  GarageProtocols.swift
//  MyCar
//
//  Created by Nikita on 05.06.2021.
//

import UIKit
import CoreData

protocol GarageViewProtocol: BaseViewProtocol {
    var showController: ShowController? { get set }
}

protocol GarageCoordinatorOutput: AnyObject {
    var finishFlow: CompletionBlock? { get set }
}

protocol GarageAssemblable: GaragePresenterOutput, GarageViewProtocol {}

protocol GaragePresenterInput: AnyObject {
    func moduleStart()
    func addNewCar(name: String)
}

protocol GaragePresenterOutput: BaseViewProtocol {
    var showController: ShowController? { get set }
    var presenter: GaragePresenterInput? { get set }
    var dataProvider: GarageDataProviderDelegate? { get set }

    func reload()
}

protocol GarageInteractorInput: AnyObject {
    func loadCars()
    func saveNewCar(_ car: Car)
    func removeCar(_ car: Car)
}

protocol GarageInteractorOutput: AnyObject {
    func set(_ carModels: [Car])
    func add(_ newCar: Car)
}

protocol GarageDataProviderDelegate: UITableViewDataSource, UITableViewDelegate {}

protocol GarageDataProviderOutput: AnyObject {
    func removeCar(_ car: Car)
}

protocol GarageDataProviderInput: AnyObject {
    func set(_ carModels: [Car])
}
