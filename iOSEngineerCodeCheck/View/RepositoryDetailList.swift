//
//  RepositoryDetailList.swift
//  iOSEngineerCodeCheck
//
//  Created by Yuto on 2023/03/28.
//  Copyright © 2023 YUMEMI Inc. All rights reserved.
//

import SwiftUI

struct RepositoryDetailList: View {
    
    let symbols = ["star", "tuningfork", "smallcircle.filled.circle", "eye"]
    let titles = ["Star", "Forks", "Issues", "Watchers"]
    var details: [Int]
    
    init(repository: Repository) {
        self.details = [
            repository.stargazers_count,
            repository.forks_count,
            repository.open_issues,
            repository.watchers,
        ]
    }
    
    var body: some View {
        ForEach(0..<4) { i in
            RepositoryDetailLabel(
                systemImage: symbols[i],
                title: titles[i],
                detail: "\(details[i])"
            )
        }
    }
}

struct RepositoryDetailList_Previews: PreviewProvider {
    static var previews: some View {
        RepositoryDetailList(
            repository: Repository(
                name: "Title",
                description: "description",
                language: "Swift",
                stargazers_count: 1,
                watchers: 12,
                forks_count: 123,
                open_issues: 0,
                owner: Repository.Owner(
                    login: "username",
                    avatar_url: ""
                )
            )
        )
    }
}
