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
    ///Repositoryの詳細
    let description: String?
    ///利用されている言語
    let language: String?
    ///starの数
    let stargazers_count: Int
    ///watchされている数
    let watchers_count: Int
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

extension Repository {
    
    public var fullName: String {
        return self.owner.login + "/" + self.name
    }
    
}
