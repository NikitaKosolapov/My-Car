//
//  BaseController.swift
//  MyCar
//
//  Created by Nikita on 06.06.2021.
//

import UIKit
import SnapKit

class BaseController: UIViewController, BaseViewProtocol, UINavigationControllerDelegate {
    var onCompletion: CompletionBlock?

    var tabBarHeight: CGFloat {
        return self.tabBarController?.tabBar.frame.size.height ?? 0
    }
}
