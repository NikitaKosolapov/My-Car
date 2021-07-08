//
//  NotificationsCoordinator.swift
//  My Car
//
//  Created by Nikita on 08/07/2021.
//

import Foundation

final class NotificationsCoordinator: BaseCoordinator, NotificationsCoordinatorOutput {
    var finishFlow: CompletionBlock?

    private let factory: NotificationsFactoryProtocol
    private let router: Routable

    init(with factory: NotificationsFactoryProtocol, router: Routable) {
        self.factory = factory
        self.router = router
    }
}

extension NotificationsCoordinator: Coordinatable {
    func start() {
        performFlow()
    }
}

private extension NotificationsCoordinator {
    func performFlow() {
        let view = factory.makeNotificationsView()
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
