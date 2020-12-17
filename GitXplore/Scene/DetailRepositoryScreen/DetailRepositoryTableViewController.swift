//
//  DetailRepositoryTableViewController.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import UIKit

protocol DetailRepositoryDisplay: AnyObject {
    func display(itemDisplay: ItemDisplay, itemsDescriptionDisplay: [ItemDescriptionDisplay])
}

final class DetailRepositoryTableViewController: UITableViewController {

    private var itemsDescriptionDisplay: [ItemDescriptionDisplay] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    private var itemDisplay: ItemDisplay? {
        didSet {
            tableView.reloadData()
        }
    }

    let interactor: DetailRepositoryInteracting

    init(interactor: DetailRepositoryInteracting) {
        self.interactor = interactor
        super.init(style: .plain)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        interactor.presentDetail()
    }

    private func setupTableView() {
        tableView.register(nibWithCellClass: DetailRepositoryTableViewCell.self)
        tableView.register(nibWithCellClass: DetailRepositoryHeaderTableViewCell.self)
        tableView.separatorStyle = .none
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 1
        default: return itemsDescriptionDisplay.count
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withClass: DetailRepositoryHeaderTableViewCell.self, for: indexPath)
            cell.configureCell(parameters: itemDisplay)
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withClass: DetailRepositoryTableViewCell.self, for: indexPath)

            let parameters = itemsDescriptionDisplay[indexPath.row]
            cell.configureCell(title: parameters.title, description: parameters.description)
            return cell
        default:
            return UITableViewCell()
        }
    }

}

extension DetailRepositoryTableViewController: DetailRepositoryDisplay {
    func display(itemDisplay: ItemDisplay, itemsDescriptionDisplay: [ItemDescriptionDisplay]) {
        self.itemDisplay = itemDisplay
        self.itemsDescriptionDisplay = itemsDescriptionDisplay
    }
}
