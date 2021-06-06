//
//  MenuPresenter.swift
//  My Car
//
//  Created by Nikita on 06/06/2021.
//

import UIKit

final class MenuPresenter {
    weak var output: MenuPresenterOutput?
    var dataProvider: MenuDataProviderInput?
    var interactor: MenuInteractorInput?
}

extension MenuPresenter: MenuPresenterInput {
    func moduleStart() {

    }
}

extension MenuPresenter: MenuInteractorOutput {

}

extension MenuPresenter: MenuDataProviderOutput {

}
