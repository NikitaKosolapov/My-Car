//
//  ModulesFactory.swift
//  MyCar
//
//  Created by Nikita on 12.05.2021.
//

import Foundation

final class ModulesFactory: NSObject, TabBarFactoryProtocol {
    func makeExpendituresCoordinator(router: Routable) -> Coordinatable & ExpendituresCoordinatorOutput {
        return ExpendituresCoordinator(with: self, router: router)
    }

    func makeMenuCoordinator(router: Routable) -> Coordinatable & MenuCoordinatorOutput {
        return MenuCoordinator(with: self, router: router)
    }

    func makeMaintenanceCoordinator(router: Routable) -> Coordinatable & MaintenanceCoordinatorOutput {
        return MaintenanceCoordinator(with: self, router: router)
    }

    func makeGarageCoordinator(router: Routable) -> Coordinatable & GarageCoordinatorOutput {
        return GarageCoordinator(with: self, router: router)
    }

    func makeTabBarView() -> TabBarViewProtocol {
        let view = TabBarController()
        TabBarAssembly.assembly(with: view)
        return view
    }
}

extension ModulesFactory: GarageFactoryProtocol {
    func makeGarageView() -> GarageViewProtocol {
        let view = GarageController()
        GarageAssembly.assembly(with: view)
        return view
    }
}

extension ModulesFactory: MaintenanceFactoryProtocol {
    func makeMaintenanceView() -> MaintenanceViewProtocol {
        let view = MaintenanceController()
        MaintenanceAssembly.assembly(with: view)
        return view
    }
}

extension ModulesFactory: MenuFactoryProtocol {
    func makeMenuView() -> MenuViewProtocol {
        let view = MenuController()
        MenuAssembly.assembly(with: view)
        return view
    }
}

extension ModulesFactory: ExpendituresFactoryProtocol {
    func makeExpendituresView() -> ExpendituresViewProtocol {
        let view = ExpendituresController()
        ExpendituresAssembly.assembly(with: view)
        return view
    }
}
