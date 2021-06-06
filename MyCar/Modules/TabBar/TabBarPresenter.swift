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

    private let service: UserDefaultsInput

    init(service: UserDefaultsInput) {
        self.service = service
    }
}

extension TabBarPresenter: TabBarPresenterInput {
    func getTabBatIndex() -> Int {
        let value = Int(bitPattern: service.get(key: AppKeys.tabBarIndex))
        return value
    }

    func setTabBarIndex(_ index: Int) {
        service.set(key: AppKeys.tabBarIndex, value: index, completion: nil)
    }
}

extension TabBarPresenter: TabBarInteractorOutput {

}
