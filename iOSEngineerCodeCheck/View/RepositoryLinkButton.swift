//
//  RepositoryLinkButton.swift
//  iOSEngineerCodeCheck
//
//  Created by Yuto on 2023/04/03.
//  Copyright © 2023 YUMEMI Inc. All rights reserved.
//

import SwiftUI

struct RepositoryLinkButton: View {
    
    private var url: URL?
    
    init(repository: Repository) {
        self.url = repository.url
    }
    
    var body: some View {
        switch url {
        case .none:
            label
        case .some(let url):
            Link(destination: url) {
                label
            }
        }
    }
    
    var label: some View {
        HStack {
            Label("Open in GitHub",
                  systemImage: "link")
            Spacer()
        }
    }
}

struct RepositoryLinkButton_Previews: PreviewProvider {
    static var previews: some View {
        RepositoryLinkButton(
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
