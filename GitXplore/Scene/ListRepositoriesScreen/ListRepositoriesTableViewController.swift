//
//  ListRepositoriesTableViewController.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import UIKit

protocol ListRepositoriesDisplay: AnyObject {
    func display(items: [ItemDisplay])
}

final class ListRepositoriesTableViewController: UITableViewController {

    let interactor: ListRepositoriesInteracting
    private var items: [ItemDisplay] = [] {
        didSet {
            tableView.reloadData()
        }
    }

    init(interactor: ListRepositoriesInteracting) {
        self.interactor = interactor
        super.init(style: .plain)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        interactor.presentItems()
        setupTableView()
    }

    func setupTableView() {
        tableView.register(nibWithCellClass: ListRepositoryTableViewCell.self)
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withClass: ListRepositoryTableViewCell.self, for: indexPath)

        let parameters = items[indexPath.row]
        cell.configureCell(parameters: parameters)
        
        return cell
    }

}

extension ListRepositoriesTableViewController: ListRepositoriesDisplay {
    func display(items: [ItemDisplay]) {
        self.items = items
    }
}
