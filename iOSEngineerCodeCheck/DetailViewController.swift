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
    
    var repoView: RepositoriesViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let repo = repoView.repositories[repoView.selectedRow]
        
        languageLabel.text = "Written in \(repo["language"] as? String ?? "")"
        starLabel.text = "\(repo["stargazers_count"] as? Int ?? 0) stars"
        watcherLabel.text = "\(repo["wachers_count"] as? Int ?? 0) watchers"
        forksLabel.text = "\(repo["forks_count"] as? Int ?? 0) forks"
        issuesLabel.text = "\(repo["open_issues_count"] as? Int ?? 0) open issues"
        getImage()
        
    }
    
    func getImage(){
        
        let repo = repoView.repositories[repoView.selectedRow]
        
        titleLabel.text = repo["full_name"] as? String
        
        if let owner = repo["owner"] as? [String: Any] {
            if let imgURL = owner["avatar_url"] as? String {
                URLSession.shared.dataTask(with: URL(string: imgURL)!) { (data, res, err) in
                    let img = UIImage(data: data!)!
                    DispatchQueue.main.async {
                        self.imageView.image = img
                    }
                }.resume()
            }
        }
        
    }
    
}
