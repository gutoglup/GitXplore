//
//  SearchItem.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 16/12/20.
//

import Foundation

struct SearchItem: Codable {
    let title: String
    let date: Date
    let repository: Repository
}
