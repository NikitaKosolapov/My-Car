//
//  MaintenanceDetailProtocols.swift
//  My Car
//
//  Created by Nikita on 08/07/2021.
//

import UIKit

protocol MaintenanceDetailCoordinatorOutput: AnyObject {
    var finishFlow: CompletionBlock? { get set }
}

protocol MaintenanceDetailAssemblable: MaintenanceDetailViewProtocol, MaintenanceDetailPresenterOutput {}

protocol MaintenanceDetailViewProtocol: BaseViewProtocol {
    var showController: ShowController? { get set }
}

protocol MaintenanceDetailPresenterOutput: BaseViewProtocol {
    var showController: ShowController? { get set }
    var presenter: MaintenanceDetailPresenterInput? { get set }
    var dataProvider: MaintenanceDetailDataProviderDelegate? { get set }
}

protocol MaintenanceDetailPresenterInput: AnyObject {
    func moduleStart()
}

protocol MaintenanceDetailInteractorInput: AnyObject {

}

protocol MaintenanceDetailInteractorOutput: AnyObject {

}

protocol MaintenanceDetailDataProviderDelegate: UITableViewDataSource, UITableViewDelegate {}

protocol MaintenanceDetailDataProviderInput: AnyObject {

}

protocol MaintenanceDetailDataProviderOutput: AnyObject {

}
