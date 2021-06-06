//
//  GarageProtocols.swift
//  MyCar
//
//  Created by Nikita on 05.06.2021.
//

import UIKit

protocol GarageViewProtocol: BaseViewProtocol {
    var showController: ShowController? { get set }
}

protocol GarageCoordinatorOutput: AnyObject {
    var finishFlow: CompletionBlock? { get set }
}

protocol GarageAssemblable: GaragePresenterOutput, GarageViewProtocol {}

protocol GaragePresenterInput: AnyObject {
    func moduleStart()
}

protocol GaragePresenterOutput: BaseViewProtocol {
    var showController: ShowController? { get set }
    var presenter: GaragePresenterInput? { get set }
    var dataProvider: GarageDataProviderDelegate? { get set }
}

protocol GarageInteractorInput: AnyObject {

}

protocol GarageInteractorOutput: AnyObject {

}

protocol GarageDataProviderDelegate: UITableViewDataSource, UITableViewDelegate {}

protocol GarageDataProviderOutput: AnyObject {

}

protocol GarageDataProviderInput: AnyObject {

}
