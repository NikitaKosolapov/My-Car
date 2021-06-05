//
//  BaseCoordinator.swift
//  MyCar
//
//  Created by Nikita on 12.05.2021.
//

import Foundation

class BaseCoordinator {
    var childCoordinators: [Coordinatable] = []

    func addDependency(_ coordinator: Coordinatable) {
        for element in childCoordinators where element === coordinator {
            return
        }
        childCoordinators.append(coordinator)
    }

    func removeDependency(_ coordinator: Coordinatable?) {
        guard childCoordinators.isEmpty == false,
              let coordinator = coordinator else { return }

        for (index, element) in childCoordinators.enumerated() where element === coordinator {
            childCoordinators.remove(at: index)
        }
    }
}
