//
//  SearchRepositoryTableViewController.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 12/12/20.
//

import UIKit
import SwifterSwift
import RxSwift

protocol SearchRepositoryDisplay: AnyObject {
    func onErrorSearchRepository(title: String, message: String)
    func didSuccessSearchRepository()
}

final class SearchRepositoryTableViewController: UITableViewController, ReusableView {

    private var interactor: SearchRepositoryInteracting

    init(interactor: SearchRepositoryInteracting) {
        self.interactor = interactor
        super.init(style: .plain)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        title = "GitXplore"
    }

    func setupTableView() {
        tableView.register(nibWithCellClass: SearchRepositoryTableViewCell.self)
        tableView.register(nibWithCellClass: RecentSearchTableViewCell.self)
        tableView.separatorStyle = .none
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 1
        default: return 0
        }
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withClass: SearchRepositoryTableViewCell.self, for: indexPath)
            cell.searchButton.addTarget(self, action: #selector(onPressSearchButton), for: .touchUpInside)

            return cell
        default:
            let cell = tableView.dequeueReusableCell(withClass: RecentSearchTableViewCell.self, for: indexPath)

            return cell
        }
    }

    @objc func onPressSearchButton() {
        // TODO: Implement start loading
        if let cell = tableView.cellForRow(at: IndexPath(row: 0, section: 0)) as? SearchRepositoryTableViewCell {
            interactor.searchRepository(query: cell.searchTextField.text)
        }
    }
}

extension SearchRepositoryTableViewController: SearchRepositoryDisplay {
    func didSuccessSearchRepository() {
        // TODO: Implement stop loading
    }

    func onErrorSearchRepository(title: String, message: String) {
        showAlert(title: title, message: message)
    }
}
