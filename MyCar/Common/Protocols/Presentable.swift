//
//  Presentable.swift
//  MyCar
//
//  Created by Nikita on 12.05.2021.
//

import UIKit

protocol Presentable {
    var topController: UIViewController? { get }
    var toPresent: UIViewController? { get }
}

extension UIViewController: Presentable {
    var topController: UIViewController? {
        navigationController?.topViewController
    }

    var toPresent: UIViewController? {
        self
    }
}
