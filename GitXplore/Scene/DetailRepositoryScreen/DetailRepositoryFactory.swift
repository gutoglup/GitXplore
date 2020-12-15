//
//  DetailRepositoryFactory.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import UIKit

struct DetailRepositoryFactory {
    func make() -> UITableViewController {
        let interactor = DetailRepositoryInteractor()
        let presenter = DetailRepositoryPresenter(interactor: interactor)
        let viewController = DetailRepositoryTableViewController(presenter: presenter)

        presenter.viewController = viewController

        return viewController
    }
}
