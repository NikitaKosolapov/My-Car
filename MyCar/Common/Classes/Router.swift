//
//  Router.swift
//  MyCar
//
//  Created by Nikita on 12.05.2021.
//

import UIKit

final class Router: NSObject {
    private weak var window: UIWindow?
    private var controllers: [UIViewController]?
    fileprivate var completions: RouterCompletions

    private var rootViewController: UIViewController? {
        return window?.rootViewController
    }

    private var navigationController: UINavigationController? {
        if let controllers = controllers,
           controllers.count > 0 {
            return controllers.last as? UINavigationController
        } else if let tabBarController = rootViewController as? UITabBarController {
            return tabBarController.selectedViewController as? UINavigationController
        } else {
            return rootViewController as? UINavigationController
        }
    }

    var topController: UIViewController? {
        navigationController?.topViewController
    }

    var toPresent: UIViewController? {
        window?.rootViewController ?? UIViewController()
    }

    init(window: UIWindow?) {
        self.window = window
        completions = [:]
    }
}

extension Router: Routable {
    func addModule(_ module: Presentable?) {
        guard let controller = module?.toPresent,
              let tabBarController = window?.rootViewController as? UITabBarController else { return }
        let navigationController = AppNavigationController(rootViewController: controller)

        if tabBarController.viewControllers == nil {
            tabBarController.viewControllers = [navigationController]
        } else {
            tabBarController.viewControllers?.append(navigationController)
        }
        controller.loadViewIfNeeded()
    }

    func setRootWindow(_ module: Presentable?) {
        guard let controller = module?.toPresent else { return }
        window?.rootViewController = controller
        window?.makeKeyAndVisible()
    }
}
