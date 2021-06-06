//
//  MaintenanceCoordinator.swift
//  My Car
//
//  Created by Nikita on 06/06/2021.
//

import Foundation

final class MaintenanceCoordinator: BaseCoordinator, MaintenanceCoordinatorOutput {
    var finishFlow: CompletionBlock?

    private let factory: MaintenanceFactoryProtocol
    private let router: Routable

    init(with factory: MaintenanceFactoryProtocol, router: Routable) {
        self.factory = factory
        self.router = router
    }
}

extension MaintenanceCoordinator: Coordinatable {
    func start() {
        performFlow()
    }
}

private extension MaintenanceCoordinator {
    func performFlow() {
        let view = factory.makeMaintenanceView()
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
