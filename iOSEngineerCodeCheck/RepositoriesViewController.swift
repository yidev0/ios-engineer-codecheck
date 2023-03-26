//
//  RepositoriesViewController.swift
//  iOSEngineerCodeCheck
//
//  Created by 史 翔新 on 2020/04/20.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import UIKit

class RepositoriesViewController: UITableViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    var repositories: [[String: Any]] = []
    
    var urlTask: URLSessionTask?
    var searchText: String!
    var url: String!
    var selectedRow: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.text = "GitHubのリポジトリを検索できるよー"
        searchBar.delegate = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Detail"{
            let detailView = segue.destination as! DetailViewController
            detailView.repoView = self
        }
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return repositories.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let repo = repositories[indexPath.row]
        cell.textLabel?.text = repo["full_name"] as? String ?? ""
        cell.detailTextLabel?.text = repo["language"] as? String ?? ""
        cell.tag = indexPath.row
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedRow = indexPath.row
        // 画面遷移時に呼ばれる
        performSegue(withIdentifier: "Detail", sender: self)
        
    }
    
}


extension RepositoriesViewController: UISearchBarDelegate {
    
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        // searchBarの初期化
        searchBar.text = ""
        return true
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        urlTask?.cancel()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {

        let searchText: String = searchBar.text!
        searchRepository(for: searchText)
        
    }
    
    func searchRepository(for text: String) {
        
        if text.count != 0 {
            let url = "https://api.github.com/search/repositories?q=\(text)"
            urlTask = URLSession.shared.dataTask(with: URL(string: url)!) { (data, res, err) in
                let result = try! JSONDecoder().decode(Repositories.self, from: data!)
                self.repositories = result.items
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            
            urlTask?.resume()
        }
        
    }
    
}
