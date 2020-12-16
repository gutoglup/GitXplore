//
//  ListRepositoriesFactory.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import UIKit

struct ListRepositoriesFactory {
    func make(repository: Repository, term: String) -> UITableViewController {
        let router = ListRepositoriesRouter()
        let presenter = ListRepositoriesPresenter(router: router)
        let interactor = ListRepositoriesInteractor(presenter: presenter, repository: repository)
        let viewController = ListRepositoriesTableViewController(interactor: interactor)

        presenter.viewController = viewController
        router.viewController = viewController
        viewController.title = term

        return viewController
    }
}
