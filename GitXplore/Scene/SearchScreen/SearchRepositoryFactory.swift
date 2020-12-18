//
//  SearchRepositoryFactory.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 12/12/20.
//

import UIKit

struct SearchRepostoryFactory {
    func make() -> UINavigationController {
        let router = SearchRepositoryRouter()
        let service = RepositoryService()
        let presenter = SearchRepositoryPresenter(router: router)
        let searchRepository = SearchRepository()
        let interactor = SearchRepositoryInteractor(service: service, presenter: presenter, searchRepository: searchRepository)
        let viewController = SearchRepositoryTableViewController(interactor: interactor)

        presenter.viewController = viewController
        router.viewController = viewController

        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.navigationBar.barTintColor = UIColor(named: "Primary")
        navigationController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        navigationController.navigationBar.isTranslucent = false
        navigationController.navigationBar.tintColor = .white

        return navigationController
    }
}
