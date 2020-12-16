//
//  ListRepositoriesInteractor.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import Foundation

protocol ListRepositoriesInteracting {
    func presentItems()
}

final class ListRepositoriesInteractor {
    private let presenter: ListRepositoriesPresenting
    private let repository: Repository

    init(presenter: ListRepositoriesPresenting, repository: Repository) {
        self.presenter = presenter
        self.repository = repository
    }
}

extension ListRepositoriesInteractor: ListRepositoriesInteracting {
    func presentItems() {
        presenter.presentItems(repository: repository)
    }
}
