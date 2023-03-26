//
//  RepositoriesViewController.swift
//  iOSEngineerCodeCheck
//
//  Created by 史 翔新 on 2020/04/20.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import UIKit

class RepositoriesViewController: UITableViewController, UISearchBarDelegate {
    
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
    
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        // searchBarの初期化
        searchBar.text = ""
        return true
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        urlTask?.cancel()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        searchText = searchBar.text!
        
        if searchText.count != 0 {
            url = "https://api.github.com/search/repositories?q=\(searchText!)"
            urlTask = URLSession.shared.dataTask(with: URL(string: url)!) { (data, res, err) in
                if let obj = try! JSONSerialization.jsonObject(with: data!) as? [String: Any] {
                    if let items = obj["items"] as? [[String: Any]] {
                        self.repositories = items
                        DispatchQueue.main.async {
                            self.tableView.reloadData()
                        }
                    }
                }
            }
            // リストの更新
            urlTask?.resume()
        }
        
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
