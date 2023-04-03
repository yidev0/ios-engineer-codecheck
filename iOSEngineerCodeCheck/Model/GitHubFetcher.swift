//
//  GitHubFetcher.swift
//  iOSEngineerCodeCheck
//
//  Created by Yuto on 2023/03/27.
//  Copyright © 2023 YUMEMI Inc. All rights reserved.
//

import Foundation

class GitHubFetcher {
    
    static var shared = GitHubFetcher()
    
    public var urlTask: URLSessionTask?
    
    func fetch(_ text: String, completion: @escaping ([Repository], Error?) -> Void) {
       
        if text.count == 0 { return }
        
        let apiURL = "https://api.github.com/search/repositories?q=\(text)"
        guard let url = URL(string: apiURL) else { return }
        
        urlTask = URLSession.shared.dataTask(with: url) { (data, result, error) in
            if let data = data {
                do {
                    let result = try JSONDecoder().decode(Repositories.self, from: data)
                    autoreleasepool {
                        completion(result.items, error)
                    }
                } catch {
                    print(error.localizedDescription)
                    completion([], error)
                }
            } else {
                completion([], error)
            }
        }
        
        urlTask?.resume()
        
    }
    
}
