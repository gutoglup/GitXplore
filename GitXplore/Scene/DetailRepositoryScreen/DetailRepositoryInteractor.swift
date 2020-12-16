//
//  DetailRepositoryInteractor.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import Foundation

protocol DetailRepositoryInteracting {

}

final class DetailRepositoryInteractor {
    private let presenter: DetailRepositoryPresenting
    private let repositoryItem: Item

    init(presenter: DetailRepositoryPresenting, repositoryItem: Item) {
        self.presenter = presenter
        self.repositoryItem = repositoryItem
    }
}

extension DetailRepositoryInteractor: DetailRepositoryInteracting {

    func presentDetail() {
        let itemDetail = repositoryItem.toItemDetail()

        presenter.present(detail: itemDetail)
    }
}
