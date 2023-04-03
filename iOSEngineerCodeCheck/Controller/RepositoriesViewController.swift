//
//  RepositoriesViewController.swift
//  iOSEngineerCodeCheck
//
//  Created by 史 翔新 on 2020/04/20.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import UIKit
import SwiftUI

class RepositoriesViewController: UITableViewController {
    
    @IBOutlet weak private var searchBar: UISearchBar!
    
    private var repositories: [Repository] = []
    
    private var gitHubFetcher = GitHubFetcher.shared
    private var selectedRow: Int? = nil
    
    private var searchText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.placeholder = "GitHubのリポジトリを検索できるよー"
        searchBar.text = searchText
        searchBar.delegate = self
        
    }
    
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        if identifier == "Detail",
           let selectedRow: Int = self.selectedRow {
            let repository = self.repositories[selectedRow]
            let destination = UIHostingController(rootView: DetailView(repository: repository))
            self.navigationController?.pushViewController(destination, animated: true)
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return repositories.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let repo: Repository = repositories[indexPath.row]
        let cell = UITableViewCell()
        cell.contentConfiguration = cell.repositoryContentConfiguration(repository: repo)
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
        searchBar.text = searchText
        return true
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        gitHubFetcher.urlTask?.cancel()
        
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {

        searchText = searchBar.text ?? ""
        searchRepository(for: searchText)
        searchBar.endEditing(true)
        
    }
    
    func searchRepository(for text: String) {
        
        gitHubFetcher.fetch(text) { repos, error in
            self.repositories = repos
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        
    }
    
}
