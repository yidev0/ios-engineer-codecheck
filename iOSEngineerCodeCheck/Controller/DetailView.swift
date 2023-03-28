//
//  DetailView.swift
//  iOSEngineerCodeCheck
//
//  Created by Yuto on 2023/03/28.
//  Copyright © 2023 YUMEMI Inc. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    var repository: Repository
    @State var image: Image? = nil
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 8) {
                RepositoryOwnerLabel(image: image, userName: repository.owner.login)
                Text(repository.name)
                    .foregroundColor(.primary)
                    .font(.title)
                    .fontWeight(.bold)
                Text(repository.description ?? "")
                    .foregroundColor(.primary)
                    .font(.body)
            }
            .padding()
            
            VStack(spacing: 16) {
                RepositoryDetailList(repository: repository)
            }
            .padding()
        }
        .onAppear {
            getImage(for: repository)
        }
    }
    
    func getImage(for repo: Repository) {
        
        repo.owner.fetchAvatar { image, error in
            if let image: UIImage = image {
                self.image = Image(uiImage: image)
            }
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(
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
                    avatar_url: "https://avatars.githubusercontent.com/in/15368?s=80&v=4"
                )
            )
        )
    }
}
