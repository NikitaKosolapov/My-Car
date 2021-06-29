//
//  NSObject.swift
//  MyCar
//
//  Created by Nikita on 06.06.2021.
//

import Foundation

extension NSObject {
    static func nameOfClass() -> String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}
