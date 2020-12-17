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
}

extension DetailRepositoryPresenter: DetailRepositoryPresenting {
    func present(detail: ItemDetail) {
        let byteFormatter = ByteCountFormatter()
        byteFormatter.allowedUnits = [.useMB, .useKB]
        byteFormatter.countStyle = .file
        byteFormatter.includesUnit = true
        let itemsDescriptionDisplay = [
            ItemDescriptionDisplay(title: "Created at", description: detail.createdAt),
            ItemDescriptionDisplay(title: "License", description: detail.licenseName),
            ItemDescriptionDisplay(title: "Forks", description: detail.forks),
            ItemDescriptionDisplay(title: "Score", description: detail.score),
            ItemDescriptionDisplay(title: "Watchers", description: detail.watchers),
            ItemDescriptionDisplay(title: "Size", description: "\(detail.size ?? "-") kbytes"),
            ItemDescriptionDisplay(title: "Url", description: detail.url),
            ItemDescriptionDisplay(title: "Pushed at", description: detail.pushedAt),
        ]

        let itemDisplay = ItemDisplay(
            name: detail.name,
            updatedAt: "Updated at: \(detail.updatedAt ?? "-")",
            ownerLogin: detail.ownerLogin,
            language: "Language: \(detail.language ?? "-")",
            avatarUrl: detail.avatarUrl)

        viewController?.display(itemDisplay: itemDisplay, itemsDescriptionDisplay: itemsDescriptionDisplay)
    }
}
