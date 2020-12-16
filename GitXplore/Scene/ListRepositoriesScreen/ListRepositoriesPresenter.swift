//
//  ListRepositoriesPresenter.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import Foundation

protocol ListRepositoriesPresenting {
    func presentItems(repository: Repository)
}

final class ListRepositoriesPresenter {
    weak var viewController: ListRepositoriesDisplay?
    private let router: ListRepositoriesRouting

    init(router: ListRepositoriesRouting) {
        self.router = router
    }
}

extension ListRepositoriesPresenter: ListRepositoriesPresenting {
    func presentItems(repository: Repository) {
        guard let items = repository.items?.compactMap({ (item) -> ItemDisplay in
            ItemDisplay(
                name: item.name,
                updatedAt: item.updatedAt?.dayMonthYearHourMinute,
                ownerLogin: item.owner?.login,
                language: item.language,
                avatarUrl: item.owner?.avatarUrl)
        }) else {
            return
        }

        viewController?.display(items: items)
    }
}
