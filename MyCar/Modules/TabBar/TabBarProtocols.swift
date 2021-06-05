//
//  TabBarProtocols.swift
//  MyCar
//
//  Created by Nikita on 12.05.2021.
//

import UIKit

protocol TabBarViewProtocol: BaseViewProtocol {

}

protocol TabBarPresenterInput: AnyObject {
    func setTabBarIndex(_ index: Int)
    func getTabBatIndex() -> Int
}

protocol TabBarPresenterOutput: BaseViewProtocol {
    var presenter: TabBarPresenterInput? { get set }
}

protocol TabBarInteractorInput: AnyObject {

}

protocol TabBarInteractorOutput: AnyObject {

}

protocol TabBarCoordinatorOutput: AnyObject {
    var finishFlow: CompletionBlock? { get set }
}
