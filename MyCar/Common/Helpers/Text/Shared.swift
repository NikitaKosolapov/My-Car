//
//  Shared.swift
//  MyCar
//
//  Created by Nikita on 05.06.2021.
//

import Foundation

extension Text {
    enum Shared {
        case error

        var get: String {
            switch self {
            case .error:          return Text.localize("error")
            }
        }
    }
}
