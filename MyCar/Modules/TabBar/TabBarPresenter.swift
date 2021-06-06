//
//  TabBarPresenter.swift
//  MyCar
//
//  Created by Nikita on 12.05.2021.
//

import Foundation

final class TabBarPresenter {
    weak var output: TabBarPresenterOutput?
    var interactor: TabBarInteractorInput?

    private let userDefaultsService: UserDefaultsInput

    init(service: UserDefaultsInput) {
        self.userDefaultsService = service
    }
}

extension TabBarPresenter: TabBarPresenterInput {
    func getTabBatIndex() -> Int {
        UserDefaults.standard.integer(forKey: UserDefaultsKeys.tabBarIndex)
    }

    func setTabBarIndex(_ index: Int) {
        UserDefaults.standard.setValue(index, forKey: UserDefaultsKeys.tabBarIndex)
    }
}

extension TabBarPresenter: TabBarInteractorOutput {

}
