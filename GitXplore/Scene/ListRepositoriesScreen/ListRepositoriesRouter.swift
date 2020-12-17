//
//  ListRepositoriesRouter.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import UIKit

protocol ListRepositoriesRouting {
    func showDetail(item: Item)
}

final class ListRepositoriesRouter {
    weak var viewController: UIViewController?
}

extension ListRepositoriesRouter: ListRepositoriesRouting {

    func showDetail(item: Item) {
        let detailRepositoryViewController = DetailRepositoryFactory().make(repositoryItem: item)
        viewController?.navigationController?.pushViewController(detailRepositoryViewController)
    }
}
