//
//  DetailRepositoryTableViewController.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 14/12/20.
//

import UIKit

protocol DetailRepositoryDisplay: AnyObject {

}

final class DetailRepositoryTableViewController: UITableViewController {

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

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)



        return cell
    }

}

extension DetailRepositoryTableViewController: DetailRepositoryDisplay {
    
}
