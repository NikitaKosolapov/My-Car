//
//  ModulesFactory.swift
//  MyCar
//
//  Created by Nikita on 12.05.2021.
//

import Foundation

final class ModulesFactory: NSObject, TabBarFactoryProtocol {
    func makeTabBarView() -> TabBarViewProtocol {
        let view = TabBarController()
        TabBarAssembly.assembly(with: view)
        return view
    }
}
