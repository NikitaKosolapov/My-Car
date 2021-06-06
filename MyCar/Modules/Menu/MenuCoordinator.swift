//
//  MenuCoordinator.swift
//  My Car
//
//  Created by Nikita on 06/06/2021.
//

import Foundation

final class MenuCoordinator: BaseCoordinator, MenuCoordinatorOutput {
    var finishFlow: CompletionBlock?

    private let factory: MenuFactoryProtocol
    private let router: Routable

    init(with factory: MenuFactoryProtocol, router: Routable) {
        self.factory = factory
        self.router = router
    }
}

extension MenuCoordinator: Coordinatable {
    func start() {
        performFlow()
    }
}

private extension MenuCoordinator {
    func performFlow() {
        let view = factory.makeMenuView()
        view.completion = finishFlow
        view.showController = { [unowned self] scope in
            self.showController(scope: scope)
        }
        router.addModule(view)
    }

    func showController(scope: AppScope) {
        switch scope {
        default:
            break
        }
    }
}
