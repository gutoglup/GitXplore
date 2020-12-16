//
//  DetailRepositoryTableViewCell.swift
//  GitXplore
//
//  Created by Augusto Cesar do Nascimento dos Reis on 15/12/20.
//

import UIKit

class DetailRepositoryTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }

    func configureCell(title: String?, description: String?) {
        titleLabel.text = title
        descriptionLabel.text = description
    }
    
}
