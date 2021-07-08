//
//  CarDetailProtocols.swift
//  My Car
//
//  Created by Nikita on 08/07/2021.
//

import UIKit

protocol CarDetailCoordinatorOutput: AnyObject {
    var finishFlow: CompletionBlock? { get set }
}

protocol CarDetailAssemblable: CarDetailViewProtocol, CarDetailPresenterOutput {}

protocol CarDetailViewProtocol: BaseViewProtocol {
    var showController: ShowController? { get set }
}

protocol CarDetailPresenterOutput: BaseViewProtocol {
    var showController: ShowController? { get set }
    var presenter: CarDetailPresenterInput? { get set }
    var dataProvider: CarDetailDataProviderDelegate? { get set }
}

protocol CarDetailPresenterInput: AnyObject {
    func moduleStart()
}

protocol CarDetailInteractorInput: AnyObject {

}

protocol CarDetailInteractorOutput: AnyObject {

}

protocol CarDetailDataProviderDelegate: UITableViewDataSource, UITableViewDelegate {}

protocol CarDetailDataProviderInput: AnyObject {

}

protocol CarDetailDataProviderOutput: AnyObject {

}
