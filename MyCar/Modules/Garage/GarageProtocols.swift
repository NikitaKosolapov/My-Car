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

}

protocol GaragePresenterOutput: BaseViewProtocol {
    var presenter: GaragePresenterInput? { get set }
}

protocol GarageInteractorInput: AnyObject {

}

protocol GarageInteractorOutput: AnyObject {

}

protocol GarageDataProviderDelegate: UITableViewDataSource, UITableViewDelegate {}

protocol GarageDataProviderOutput: AnyObject {

}
