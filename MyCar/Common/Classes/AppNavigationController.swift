//
//  AppNavigationController.swift
//  MyCar
//
//  Created by Nikita on 06.06.2021.
//

import UIKit

class AppNavigationController: UINavigationController {
    var inInteractivePopGestureRecognizer: Bool = true

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupUI()
        interactivePopGestureRecognizer?.delegate = self
    }
}

private extension AppNavigationController {
    func setupUI() {
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().backgroundColor = AppColors.white
        UINavigationBar.appearance().tintColor = AppColors.white
        UINavigationBar.appearance().barTintColor = AppColors.white

        self.view.backgroundColor = AppColors.white
        self.navigationBar.backgroundColor = AppColors.white
    }
}

extension AppNavigationController: UIGestureRecognizerDelegate {
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        guard gestureRecognizer == interactivePopGestureRecognizer else {
            return true
        }
        return inInteractivePopGestureRecognizer && viewControllers.count > 1
    }
}
