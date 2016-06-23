//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Stephanie Angulo on 6/23/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit
import AFNetworking

class RepoCell: UITableViewCell {

    @IBOutlet weak var repoTitleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var avatarView: UIImageView!
    
    var repo: GithubRepo? {
        didSet {
            print("set!")
            repoTitleLabel.text = repo!.name!
            authorLabel.text = repo!.ownerHandle!
            descriptionLabel.text = repo!.repoDescription!
            forkLabel.text = String(repo!.forks!)
            starLabel.text = String(repo!.stars!)
            avatarView.setImageWithURL(NSURL(string: (repo!.ownerAvatarURL)!)!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
