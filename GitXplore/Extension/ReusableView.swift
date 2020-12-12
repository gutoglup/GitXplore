//
//  ReusableView.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 12/12/20.
//

import Foundation

protocol ReusableView {}

extension ReusableView {
    static var identifier: String {
        return String(describing: self)
    }
}
