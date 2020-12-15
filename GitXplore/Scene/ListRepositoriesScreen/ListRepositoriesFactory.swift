//
//  ListRepositoriesFactory.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import UIKit

struct ListRepositoriesFactory {
    func make() -> UITableViewController {
        let router = ListRepositoriesRouter()
        let presenter = ListRepositoriesPresenter(router: router)
        let interactor = ListRepositoriesInteractor(presenter: presenter)
        let viewController = ListRepositoriesTableViewController(interactor: interactor)

        presenter.viewController = viewController
        router.viewController = viewController

        return viewController
    }
}
