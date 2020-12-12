//
//  SearchRepositoryFactory.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 12/12/20.
//

import UIKit

struct SearchRepostoryFactory {
    func make() -> UIViewController {
        guard let viewController = UIStoryboard.main?.instantiateViewController(identifier: SearchRepositoryTableViewController.identifier) as? SearchRepositoryTableViewController else { return .init()}

        let service = RepositoryService()
        let viewModel = SearchRepositoryViewModel(service: service)
        viewController.viewModel = viewModel
        viewModel.viewController = viewController

        return viewController
    }
}
