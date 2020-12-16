//
//  ListRepositoryTableViewCell.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 15/12/20.
//

import UIKit
import Kingfisher

class ListRepositoryTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var updatedAtLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configureCell(parameters: ItemDisplay) {
        avatarImageView.kf.setImage(with: parameters.avatarUrl?.url)
        nameLabel.text = parameters.name
        usernameLabel.text = parameters.ownerLogin
        languageLabel.text = parameters.language
        updatedAtLabel.text = parameters.updatedAt
    }
}
