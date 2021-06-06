//
//  Routable.swift
//  MyCar
//
//  Created by Nikita on 12.05.2021.
//

import Foundation

protocol Routable: Presentable {
    func setRootWindow(_ module: Presentable?)
    func addModule(_ module: Presentable?)
}
