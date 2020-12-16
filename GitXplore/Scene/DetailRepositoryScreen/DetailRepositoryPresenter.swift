//
//  DetailRepositoryPresenter.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import Foundation

protocol DetailRepositoryPresenting {
    func present(detail: ItemDetail)
}

final class DetailRepositoryPresenter {
    weak var viewController: DetailRepositoryDisplay?
    private var interactor: DetailRepositoryInteracting

    init(interactor: DetailRepositoryInteracting) {
        self.interactor = interactor
    }
}

extension DetailRepositoryPresenter: DetailRepositoryPresenting {
    func present(detail: ItemDetail) {
        let itemsDisplay = [
            ItemDescriptionDisplay(title: "Created at", description: detail.createdAt),
            ItemDescriptionDisplay(title: "License", description: detail.licenseName),
            ItemDescriptionDisplay(title: "Forks", description: detail.forks),
            ItemDescriptionDisplay(title: "Score", description: detail.score),
            ItemDescriptionDisplay(title: "Watchers", description: detail.watchers),
            ItemDescriptionDisplay(title: "Size", description: detail.size),
            ItemDescriptionDisplay(title: "Url", description: detail.url),
            ItemDescriptionDisplay(title: "Pushed at", description: detail.pushedAt),
        ]
        viewController?.display(itemsDisplay: itemsDisplay)
    }
}
