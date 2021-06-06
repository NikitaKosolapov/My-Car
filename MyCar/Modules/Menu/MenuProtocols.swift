//
//  MenuProtocols.swift
//  My Car
//
//  Created by Nikita on 06/06/2021.
//

import UIKit

protocol MenuCoordinatorOutput: AnyObject {
    var finishFlow: CompletionBlock? { get set }
}

protocol MenuAssemblable: MenuViewProtocol, MenuPresenterOutput {}

protocol MenuViewProtocol: BaseViewProtocol {
    var showController: ShowController? { get set }
}

protocol MenuPresenterOutput: BaseViewProtocol {
    var showController: ShowController? { get set }
    var presenter: MenuPresenterInput? { get set }
    var dataProvider: MenuDataProviderDelegate? { get set }
}

protocol MenuPresenterInput: AnyObject {
    func moduleStart()
}

protocol MenuInteractorInput: AnyObject {

}

protocol MenuInteractorOutput: AnyObject {

}

protocol MenuDataProviderDelegate: UITableViewDataSource, UITableViewDelegate {}

protocol MenuDataProviderInput: AnyObject {

}

protocol MenuDataProviderOutput: AnyObject {

}
