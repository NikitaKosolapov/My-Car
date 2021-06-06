//
//  ExpendituresProtocols.swift
//  My Car
//
//  Created by Nikita on 06/06/2021.
//

import UIKit

protocol ExpendituresCoordinatorOutput: AnyObject {
    var finishFlow: CompletionBlock? { get set }
}

protocol ExpendituresAssemblable: ExpendituresViewProtocol, ExpendituresPresenterOutput {}

protocol ExpendituresViewProtocol: BaseViewProtocol {
    var showController: ShowController? { get set }
}

protocol ExpendituresPresenterOutput: BaseViewProtocol {
    var showController: ShowController? { get set }
    var presenter: ExpendituresPresenterInput? { get set }
    var dataProvider: ExpendituresDataProviderDelegate? { get set }
}

protocol ExpendituresPresenterInput: AnyObject {
    func moduleStart()
}

protocol ExpendituresInteractorInput: AnyObject {

}

protocol ExpendituresInteractorOutput: AnyObject {

}

protocol ExpendituresDataProviderDelegate: UITableViewDataSource, UITableViewDelegate {}

protocol ExpendituresDataProviderInput: AnyObject {

}

protocol ExpendituresDataProviderOutput: AnyObject {

}
