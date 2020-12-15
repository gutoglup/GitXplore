//
//  SearchRepositoryFactory.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 12/12/20.
//

import UIKit

struct SearchRepostoryFactory {
    func make() -> UINavigationController {
        let service = RepositoryService()
        let viewModel = SearchRepositoryViewModel(service: service)
        let viewController = SearchRepositoryTableViewController(viewModel: viewModel)

        viewModel.viewController = viewController

        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.navigationBar.barTintColor = UIColor(named: "Primary")
        navigationController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        navigationController.navigationBar.isTranslucent = false

        return navigationController
    }
}
