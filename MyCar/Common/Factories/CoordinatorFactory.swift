//
//  CoordinatorFactory.swift
//  MyCar
//
//  Created by Nikita on 12.05.2021.
//

import Foundation

final class CoordinatorFactory {
    private let modulesFactory = ModulesFactory()
}

extension CoordinatorFactory: CoordinatorFactoryProtocol {
    func makeTabBarCoordinator(router: Routable) -> Coordinatable & TabBarCoordinatorOutput {
        return TabBarCoordinator(with: modulesFactory, router: router)
    }
}
