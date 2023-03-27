//
//  Repository.swift
//  iOSEngineerCodeCheck
//
//  Created by Yuto on 2023/03/26.
//  Copyright © 2023 YUMEMI Inc. All rights reserved.
//

import Foundation
import UIKit.UIImage

struct Repository: Decodable {
    ///Repositoryの名前
    let name: String
    ///Ownerのloginを含めたRepositoryの名前
    let full_name: String
    ///利用されている言語
    let language: String?
    ///starの数
    let stargazers_count: Int
    ///watchされている数
    let watchers: Int
    ///フォークされている数
    let forks_count: Int
    ///開かれているissueの数
    let open_issues: Int
    
    ///Repositoryの所有者の情報
    let owner: Owner
    
    struct Owner: Decodable {
        ///ユーザ名
        let login: String
        let avatar_url: String
    }
}

extension Repository.Owner {
    
    func fetchAvatar(completion: @escaping (UIImage?, Error?) -> Void) {
        
        guard let url = URL(string: self.avatar_url) else {
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
