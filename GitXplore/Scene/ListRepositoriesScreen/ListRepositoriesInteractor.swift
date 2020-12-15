//
//  ListRepositoriesInteractor.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import Foundation

protocol ListRepositoriesInteracting {

}

class ListRepositoriesInteractor {
    private let presenter: ListRepositoriesPresenting

    init(presenter: ListRepositoriesPresenting) {
        self.presenter = presenter
    }
}

extension ListRepositoriesInteractor: ListRepositoriesInteracting {

}
