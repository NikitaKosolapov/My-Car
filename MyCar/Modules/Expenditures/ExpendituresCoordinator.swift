//
//  ExpendituresCoordinator.swift
//  My Car
//
//  Created by Nikita on 06/06/2021.
//

import Foundation

final class ExpendituresCoordinator: BaseCoordinator, ExpendituresCoordinatorOutput {
    var finishFlow: CompletionBlock?

    private let factory: ExpendituresFactoryProtocol
    private let router: Routable

    init(with factory: ExpendituresFactoryProtocol, router: Routable) {
        self.factory = factory
        self.router = router
    }
}

extension ExpendituresCoordinator: Coordinatable {
    func start() {
        performFlow()
    }
}

private extension ExpendituresCoordinator {
    func performFlow() {
        let view = factory.makeExpendituresView()
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
