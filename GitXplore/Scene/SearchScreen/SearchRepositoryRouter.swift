//
//  SearchRepositoryRouter.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import UIKit

protocol SearchRepositoryRouting {
    func routeDetail(with repository: Repository, term: String)
}

class SearchRepositoryRouter {
    weak var viewController: UIViewController?
}

extension SearchRepositoryRouter: SearchRepositoryRouting {
    func routeDetail(with repository: Repository, term: String) {
        let listRepositoriesViewController = ListRepositoriesFactory().make(repository: repository, term: term)
        viewController?.navigationController?.pushViewController(listRepositoriesViewController)
    }
}
