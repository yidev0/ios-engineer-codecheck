//
//  GitHubFetcher.swift
//  iOSEngineerCodeCheck
//
//  Created by Yuto on 2023/03/27.
//  Copyright © 2023 YUMEMI Inc. All rights reserved.
//

import Foundation
import UIKit

class GitHubFetcher {
    
    static var shared = GitHubFetcher()
    
    public var urlTask: URLSessionTask?
    
    func fetch(_ text: String, completion: @escaping ([Repository], Error?) -> Void) {
       
        if text.count == 0 { return }
        
        let apiURL = "https://api.github.com/search/repositories?q=\(text)"
        guard let encodedURL = apiURL.addingPercentEncoding(withAllowedCharacters: .urlFragmentAllowed) else { return }
        guard let url = URL(string: encodedURL) else { return }
        
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
    
    func fetchAvatar(from url:String, completion: @escaping (UIImage?, Error?) -> Void) {
            
        guard let url = URL(string: url) else {
            completion(nil, nil)
            return
        }
        
        URLSession.shared.dataTask(with: URLRequest(url: url)) { (data, result, error) in
            if let data = data, let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    completion(image, error)
                }
            } else {
                completion(nil, error)
            }
        }
        .resume()
            
    }
    
}
