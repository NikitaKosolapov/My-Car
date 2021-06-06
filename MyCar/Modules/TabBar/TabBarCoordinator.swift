//
//  TabBarCoordinator.swift
//  MyCar
//
//  Created by Nikita on 12.05.2021.
//

import Foundation

final class TabBarCoordinator: BaseCoordinator, TabBarCoordinatorOutput {
    var finishFlow: CompletionBlock?

    private let factory: TabBarFactoryProtocol
    private let router: Routable

    init(with factory: TabBarFactoryProtocol, router: Routable) {
        self.factory = factory
        self.router = router

        super.init()
    }
}

extension TabBarCoordinator: Coordinatable {
    func start() {
        self.performFlow()
    }
}

private extension TabBarCoordinator {
    func performFlow() {
        let view = factory.makeTabBarView()
        view.completion = finishFlow
        router.setRootWindow(view)
    }

    func performGarageFlow() {
        let coordinator = factory.makeGarageCoordinator(router: router)
        coordinator.finishFlow = self.finishFlow
        addDependency(coordinator)
        coordinator.start()
    }
}