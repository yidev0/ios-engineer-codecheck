//
//  DetailViewController.swift
//  iOSEngineerCodeCheck
//
//  Created by 史 翔新 on 2020/04/21.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var languageLabel: UILabel!
    
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var watcherLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    @IBOutlet weak var issuesLabel: UILabel!
    
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
        
        URLSession.shared.dataTask(with: URL(string: repo.owner.avatar_url)!) { (data, res, err) in
            let img = UIImage(data: data!)!
            DispatchQueue.main.async {
                self.imageView.image = img
            }
        }.resume()
        
    }
    
}
