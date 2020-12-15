//
//  SearchRepositoryViewModel.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 12/12/20.
//

import Foundation
import RxSwift

protocol SearchRepositoryPresenting {
    func onErrorSearchRepository(title: String, message: String)
    func didSuccessSearchRepository()
    func list(repository: Repository)
}

final class SearchRepositoryPresenter {
    weak var viewController: SearchRepositoryDisplay?
    private var router: SearchRepositoryRouting
    private var repository: Repository?

    init(router: SearchRepositoryRouting) {
        self.router = router
    }
}

extension SearchRepositoryPresenter: SearchRepositoryPresenting {
    func list(repository: Repository) {

    }

    func onErrorSearchRepository(title: String, message: String) {
        viewController?.onErrorSearchRepository(title: title, message: message)
    }

    func didSuccessSearchRepository() {
        viewController?.didSuccessSearchRepository()
    }
}
