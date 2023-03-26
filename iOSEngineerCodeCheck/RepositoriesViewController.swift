//
//  RepositoriesViewController.swift
//  iOSEngineerCodeCheck
//
//  Created by 史 翔新 on 2020/04/20.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import UIKit

class RepositoriesViewController: UITableViewController {
    
    @IBOutlet weak private var searchBar: UISearchBar!
    
    private var repositories: [Repository] = []
    
    private var urlTask: URLSessionTask?
    private var selectedRow: Int? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.text = "GitHubのリポジトリを検索できるよー"
        searchBar.delegate = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Detail",
           let selectedRow = selectedRow {
            let detailView = segue.destination as! DetailViewController
            detailView.repository = repositories[selectedRow]
        }
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return repositories.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        let repo: Repository = repositories[indexPath.row]
        cell.textLabel?.text = repo.full_name
        cell.detailTextLabel?.text = repo.language
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

        let searchText: String = searchBar.text ?? ""
        searchRepository(for: searchText)
        
    }
    
    func searchRepository(for text: String) {
        
        if text.count == 0 { return }
        let apiURL = "https://api.github.com/search/repositories?q=\(text)"
        guard let url = URL(string: apiURL) else { return }
        urlTask = URLSession.shared.dataTask(with: url) { (data, res, err) in
            if let data = data {
                do {
                    let result = try JSONDecoder().decode(Repositories.self, from: data)
                    autoreleasepool {
                        self.repositories = result.items
                    }
                } catch {
                    print(error.localizedDescription)
                    self.repositories = []
                }
            } else {
                self.repositories = []
            }
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        
        urlTask?.resume()
        
    }
    
}
