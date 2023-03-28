//
//  DetailViewController.swift
//  iOSEngineerCodeCheck
//
//  Created by 史 翔新 on 2020/04/21.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak private var imageView: UIImageView!
    
    @IBOutlet weak private var titleLabel: UILabel!
    
    @IBOutlet weak private var languageLabel: UILabel!
    
    @IBOutlet weak private var starLabel: UILabel!
    @IBOutlet weak private var watcherLabel: UILabel!
    @IBOutlet weak private var forksLabel: UILabel!
    @IBOutlet weak private var issuesLabel: UILabel!
    
    var repository: Repository!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(for: repository)
        getImage(for: repository)
        
    }
    
    func updateUI(for repo: Repository) {
        languageLabel.text = repo.language ?? ""
        starLabel.text = String(repo.stargazers_count)
        watcherLabel.text = String(repo.watchers)
        forksLabel.text = String(repo.forks_count)
        issuesLabel.text = String(repo.open_issues)
    }
    
    func getImage(for repo: Repository) {
        
        titleLabel.text = repo.full_name
        
        repo.owner.fetchAvatar { image, error in
            if let image: UIImage = image {
                DispatchQueue.main.async {
                    self.imageView.image = image
                }
            }
        }
        
    }
    
}