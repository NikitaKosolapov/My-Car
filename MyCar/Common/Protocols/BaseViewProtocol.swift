//
//  BaseViewProtocol.swift
//  MyCar
//
//  Created by Nikita on 12.05.2021.
//

import Foundation

protocol BaseViewProtocol: NSObjectProtocol, Presentable {
    var onCompletion: CompletionBlock? { get set }
}
