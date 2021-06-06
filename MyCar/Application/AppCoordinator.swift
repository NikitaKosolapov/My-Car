//
//  AppCoordinator.swift
//  MyCar
//
//  Created by Nikita on 12.05.2021.
//

import UIKit

final class AppCoordinator: BaseCoordinator {
    private let factory: CoordinatorFactoryProtocol
    private let router: Routable

    init(router: Routable, factory: CoordinatorFactoryProtocol) {
        self.router = router
        self.factory = factory
    }
}

extension AppCoordinator: Coordinatable {
    func start() {
        self.performFlow()
    }
}

private extension AppCoordinator {
    func performFlow() {
        let coordinator = factory.makeTabBarCoordinator(router: router)
        coordinator.finishFlow = { [unowned self, unowned coordinator] in
            self.removeDependency(coordinator)
            self.start()
        }
        addDependency(coordinator)
        coordinator.start()
    }
}
