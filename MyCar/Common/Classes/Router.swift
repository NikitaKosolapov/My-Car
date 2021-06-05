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
    func setRootWindow(_ module: Presentable?) {
        setRootWindow(module, opacity: false)
    }

    func setRootWindow(_ module: Presentable?, opacity: Bool) {
        if opacity {
            guard let controller = module?.toPresent as? UITabBarController else { return }
            if let snapshot = window?.snapshotView(afterScreenUpdates: true) {
                controller.viewControllers = controllers
                controller.selectedIndex = 0
                controller.view?.addSubview(snapshot)

                window?.rootViewController = controller
                window?.makeKeyAndVisible()

                controllers?.removeAll()
                controllers = nil

                UIView.animate(withDuration: 0.3,
                               animations: {
                                snapshot.layer.opacity = 0
                               }, completion: { bool in
                                if bool {
                                    snapshot.removeFromSuperview()
                                }
                               })
            }
        } else {
            guard let controller = module?.toPresent else { return }
            window?.rootViewController = controller
            window?.makeKeyAndVisible()
        }
    }
}
