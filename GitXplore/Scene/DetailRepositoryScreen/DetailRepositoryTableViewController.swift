//
//  DetailRepositoryTableViewController.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import UIKit

protocol DetailRepositoryDisplay: AnyObject {
    func display(itemsDisplay: [ItemDescriptionDisplay])
}

final class DetailRepositoryTableViewController: UITableViewController {

    private var itemsDisplay: [ItemDescriptionDisplay] = [] {
        didSet {
            tableView.reloadData()
        }
    }

    let presenter: DetailRepositoryPresenting

    init(presenter: DetailRepositoryPresenting) {
        self.presenter = presenter
        super.init(style: .plain)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }

    private func setupTableView() {
        tableView.register(nibWithCellClass: DetailRepositoryTableViewCell.self)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 0
        default: return 8
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            return UITableViewCell()
        case 1:
            let cell = tableView.dequeueReusableCell(withClass: DetailRepositoryTableViewCell.self, for: indexPath)

            let parameters = itemsDisplay[indexPath.row]
            cell.configureCell(title: parameters?.title, description: parameters?.description)
            return cell
        default:
            return UITableViewCell()
        }
    }

}

extension DetailRepositoryTableViewController: DetailRepositoryDisplay {
    func display(itemsDisplay: [ItemDescriptionDisplay]) {
        self.itemsDisplay = itemsDisplay
    }
}
