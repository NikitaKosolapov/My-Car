//
//  CoordinatorFactoryProtocol.swift
//  MyCar
//
//  Created by Nikita on 12.05.2021.
//

import Foundation

protocol CoordinatorFactoryProtocol {
    func makeTabBarCoordinator(router: Routable) -> TabBarCoordinatorOutput & Coordinatable
}
