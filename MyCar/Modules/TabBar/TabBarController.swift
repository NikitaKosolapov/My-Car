//
//  TabBarController.swift
//  MyCar
//
//  Created by Nikita on 12.05.2021.
//

import UIKit

final class TabBarController: UITabBarController, TabBarViewProtocol {
    var completion: CompletionBlock?
    var presenter: TabBarPresenterInput?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
}

extension TabBarController: TabBarPresenterOutput {

}

extension TabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        self.presenter?.setTabBarIndex(self.selectedIndex)
    }
}

private extension TabBarController {
    func setupUI() {
        self.view.backgroundColor = AppColors.white
        self.tabBar.barTintColor = AppColors.white
        self.tabBar.backgroundColor = AppColors.white
        self.tabBar.tintColor = AppColors.black
        self.tabBar.unselectedItemTintColor = AppColors.black
    }
}
