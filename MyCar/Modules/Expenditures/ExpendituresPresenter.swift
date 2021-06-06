//
//  ExpendituresPresenter.swift
//  My Car
//
//  Created by Nikita on 06/06/2021.
//

import UIKit

final class ExpendituresPresenter {
    weak var output: ExpendituresPresenterOutput?
    var dataProvider: ExpendituresDataProviderInput?
    var interactor: ExpendituresInteractorInput?
}

extension ExpendituresPresenter: ExpendituresPresenterInput {
    func moduleStart() {

    }
}

extension ExpendituresPresenter: ExpendituresInteractorOutput {

}

extension ExpendituresPresenter: ExpendituresDataProviderOutput {

}
