//
//  CarDetailPresenter.swift
//  My Car
//
//  Created by Nikita on 08/07/2021.
//

import UIKit

final class CarDetailPresenter {
    weak var output: CarDetailPresenterOutput?
    var dataProvider: CarDetailDataProviderInput?
    var interactor: CarDetailInteractorInput?
}

extension CarDetailPresenter: CarDetailPresenterInput {
    func moduleStart() {

    }
}

extension CarDetailPresenter: CarDetailInteractorOutput {

}

extension CarDetailPresenter: CarDetailDataProviderOutput {

}