//
//  GarageCoordinator.swift
//  MyCar
//
//  Created by Nikita on 06.06.2021.
//

import Foundation

final class GarageCoordinator: BaseCoordinator, GarageCoordinatorOutput {
    var finishFlow: CompletionBlock?

    private let factory: GarageFactoryProtocol
    private let router: Routable

    init(with factory: GarageFactoryProtocol, router: Routable) {
        self.factory = factory
        self.router = router
    }
}

extension GarageCoordinator: Coordinatable {
    func start() {
        performFlow()
    }
}

private extension GarageCoordinator {
    func performFlow() {
        let view = factory.makeGarageView()
        view.onCompletion = finishFlow
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
