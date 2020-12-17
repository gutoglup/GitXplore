//
//  DetailRepositoryFactory.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import UIKit

struct DetailRepositoryFactory {
    func make(repositoryItem: Item) -> UITableViewController {

        let presenter = DetailRepositoryPresenter()
        let interactor = DetailRepositoryInteractor(presenter: presenter, repositoryItem: repositoryItem)
        let viewController = DetailRepositoryTableViewController(interactor: interactor)

        presenter.viewController = viewController

        return viewController
    }
}
