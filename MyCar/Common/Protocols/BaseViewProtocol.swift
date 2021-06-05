//
//  BaseViewProtocol.swift
//  MyCar
//
//  Created by Nikita on 12.05.2021.
//

import Foundation

protocol BaseViewProtocol: NSObjectProtocol, Presentable {
    var completion: CompletionBlock? { get set }
}
