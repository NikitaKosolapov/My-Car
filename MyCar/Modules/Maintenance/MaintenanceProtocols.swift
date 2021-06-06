//
//  MaintenanceProtocols.swift
//  My Car
//
//  Created by Nikita on 06/06/2021.
//

import UIKit

protocol MaintenanceCoordinatorOutput: AnyObject {
    var finishFlow: CompletionBlock? { get set }
}

protocol MaintenanceAssemblable: MaintenanceViewProtocol, MaintenancePresenterOutput {}

protocol MaintenanceViewProtocol: BaseViewProtocol {
    var showController: ShowController? { get set }
}

protocol MaintenancePresenterOutput: BaseViewProtocol {
    var showController: ShowController? { get set }
    var presenter: MaintenancePresenterInput? { get set }
    var dataProvider: MaintenanceDataProviderDelegate? { get set }
}

protocol MaintenancePresenterInput: AnyObject {
    func moduleStart()
}

protocol MaintenanceInteractorInput: AnyObject {

}

protocol MaintenanceInteractorOutput: AnyObject {

}

protocol MaintenanceDataProviderDelegate: UITableViewDataSource, UITableViewDelegate {}

protocol MaintenanceDataProviderInput: AnyObject {

}

protocol MaintenanceDataProviderOutput: AnyObject {

}
