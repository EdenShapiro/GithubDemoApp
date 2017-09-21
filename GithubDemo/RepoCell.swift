//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Eden on 9/21/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {
    @IBOutlet weak var repoTitleLabel: UILabel!
    @IBOutlet weak var starsImageView: UIImageView!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var forksImageView: UIImageView!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var repo: GithubRepo! {
        didSet {
            repoTitleLabel.text = repo.name
            starsLabel.text = "\(repo.stars!)"
            forksLabel.text = "\(repo.forks!)"
            ownerLabel.text = repo.ownerHandle
            descriptionLabel.text = repo.repoDescription
            if let urlString = repo.ownerAvatarURL {
                let url = URL(string: urlString)
                avatarImageView.setImageWith(url!)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
