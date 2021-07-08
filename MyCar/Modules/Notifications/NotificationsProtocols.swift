//
//  NotificationsProtocols.swift
//  My Car
//
//  Created by Nikita on 08/07/2021.
//

import UIKit

protocol NotificationsCoordinatorOutput: AnyObject {
    var finishFlow: CompletionBlock? { get set }
}

protocol NotificationsAssemblable: NotificationsViewProtocol, NotificationsPresenterOutput {}

protocol NotificationsViewProtocol: BaseViewProtocol {
    var showController: ShowController? { get set }
}

protocol NotificationsPresenterOutput: BaseViewProtocol {
    var showController: ShowController? { get set }
    var presenter: NotificationsPresenterInput? { get set }
    var dataProvider: NotificationsDataProviderDelegate? { get set }
}

protocol NotificationsPresenterInput: AnyObject {
    func moduleStart()
}

protocol NotificationsInteractorInput: AnyObject {

}

protocol NotificationsInteractorOutput: AnyObject {

}

protocol NotificationsDataProviderDelegate: UITableViewDataSource, UITableViewDelegate {}

protocol NotificationsDataProviderInput: AnyObject {

}

protocol NotificationsDataProviderOutput: AnyObject {

}
