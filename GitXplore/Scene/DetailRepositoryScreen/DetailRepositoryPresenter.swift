//
//  DetailRepositoryPresenter.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import Foundation

protocol DetailRepositoryPresenting {

}

final class DetailRepositoryPresenter {
    weak var viewController: DetailRepositoryDisplay?
    private var interactor: DetailRepositoryInteracting

    init(interactor: DetailRepositoryInteracting) {
        self.interactor = interactor
    }
}

extension DetailRepositoryPresenter: DetailRepositoryPresenting {

}
