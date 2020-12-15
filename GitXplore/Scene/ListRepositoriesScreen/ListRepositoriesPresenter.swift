//
//  ListRepositoriesPresenter.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import Foundation

protocol ListRepositoriesPresenting {

}

class ListRepositoriesPresenter {
    weak var viewController: ListRepositoriesDisplay?
    private let router: ListRepositoriesRouting

    init(router: ListRepositoriesRouting) {
        self.router = router
    }
}

extension ListRepositoriesPresenter: ListRepositoriesPresenting {

}
