//
//  ModulesFactoryProtocols.swift
//  MyCar
//
//  Created by Nikita on 12.05.2021.
//

import Foundation

protocol TabBarFactoryProtocol {
    func makeTabBarView() -> TabBarViewProtocol
    func makeGarageCoordinator(router: Routable) -> GarageCoordinatorOutput & Coordinatable
    func makeMaintenanceCoordinator(router: Routable) -> MaintenanceCoordinatorOutput & Coordinatable
    func makeMenuCoordinator(router: Routable) -> MenuCoordinatorOutput & Coordinatable
}

protocol GarageFactoryProtocol {
    func makeGarageView() -> GarageViewProtocol
}

protocol MaintenanceFactoryProtocol {
    func makeMaintenanceView() -> MaintenanceViewProtocol
}

protocol MenuFactoryProtocol {
    func makeMenuView() -> MenuViewProtocol
}
