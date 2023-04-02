//
//  RepositoryDetailLabel.swift
//  iOSEngineerCodeCheck
//
//  Created by Yuto on 2023/03/28.
//  Copyright © 2023 YUMEMI Inc. All rights reserved.
//

import SwiftUI

struct RepositoryDetailLabel: View {
    
    var image: Image
    var title: LocalizedStringKey
    var detail: String
    
    init(
        systemImage: String,
        title: LocalizedStringKey,
        detail: String
    ) {
        self.image = Image(systemName: systemImage)
        self.title = title
        self.detail = detail
    }
    
    var body: some View {
        HStack {
            ZStack {
                image
            }
            .frame(minWidth: UIFont.preferredFont(forTextStyle: .body).pointSize + 16)
            .accessibilityHidden(true)
            
            Text(title)
                .foregroundColor(.primary)
            Spacer()
            Text(detail)
                .foregroundColor(.secondary)
        }
        .accessibilityElement(children: .combine)
    }
}

extension RepositoryDetailLabel {
    
    init(
        imageName: String,
        title: LocalizedStringKey,
        detail: String
    ) {
        self.image = Image(imageName)
        self.title = title
        self.detail = detail
    }
    
}

struct RepositoryDetailLabel_Previews: PreviewProvider {
    static var previews: some View {
        RepositoryDetailLabel(
            systemImage: "star",
            title: "Title",
            detail: "10"
        )
    }
}
