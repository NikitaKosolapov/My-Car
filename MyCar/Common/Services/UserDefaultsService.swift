//
//  UserDefaultsService.swift
//  MyCar
//
//  Created by Nikita on 06.06.2021.
//

import Foundation

protocol UserDefaultsInput: AnyObject {
    func set(key: String, value: Any, completion: CompletionBlock?)
    func get<T>(key: String) -> T?
    func remove(key: String)
}

final class UserDefaultsService: UserDefaultsInput {
    func set(key: String, value: Any, completion: CompletionBlock?) {
        UserDefaults.standard.set(value, forKey: key)
    }

    func get<T>(key: String) -> T? {
        let value = UserDefaults.standard.object(forKey: key)
        return value as? T
    }

    func remove(key: String) {
        UserDefaults.standard.removeObject(forKey: key)
    }
}
