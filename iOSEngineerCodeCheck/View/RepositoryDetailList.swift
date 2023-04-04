//
//  RepositoryDetailList.swift
//  iOSEngineerCodeCheck
//
//  Created by Yuto on 2023/03/28.
//  Copyright © 2023 YUMEMI Inc. All rights reserved.
//

import SwiftUI

struct RepositoryDetailList: View {
    
    let symbols = [
        "chevron.left.forwardslash.chevron.right",
        "star",
        "tuningfork",
        "smallcircle.filled.circle",
        "eye",
    ]
    
    let titles:[LocalizedStringKey] = [
        "Language",
        "Star",
        "Forks",
        "Issues",
        "Watchers",
    ]
    
    var details: [String]
    var languageColor: Color
    
    init(repository: Repository) {
        self.details = [
            repository.language ?? "N/A",
            "\(repository.stargazers_count)",
            "\(repository.forks_count)",
            "\(repository.open_issues)",
            "\(repository.watchers_count)",
        ]
        self.languageColor = Color(uiColor: LanguageColor(language: repository.language ?? "").color)
    }
    
    var body: some View {
        ForEach(0..<details.count, id: \.self) { i in
            RepositoryDetailLabel(
                systemImage: symbols[i],
                title: titles[i],
                detail: "\(details[i])",
                detailColor: i == 0 ? languageColor:.secondary
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
                watchers_count: 12,
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
