//
//  AppTypeAliases.swift
//  MyCar
//
//  Created by Nikita on 12.05.2021.
//

import UIKit

typealias CompletionBlock       = () -> Void
typealias ShowController        = (_ scope: AppScope) -> Void
typealias RouterCompletions     = [UIViewController: CompletionBlock]
