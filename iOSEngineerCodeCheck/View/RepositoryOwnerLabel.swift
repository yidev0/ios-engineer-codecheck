//
//  RepositoryOwnerLabel.swift
//  iOSEngineerCodeCheck
//
//  Created by Yuto on 2023/03/28.
//  Copyright © 2023 YUMEMI Inc. All rights reserved.
//

import SwiftUI

struct RepositoryOwnerLabel: View {
    
    var image: Image?
    var userName: String
    
    var body: some View {
        HStack {
            switch image {
            case .none:
                Image(systemName: "xmark.app.fill")
                    .foregroundColor(.red)
            case .some(let wrapped):
                wrapped
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: UIFont.preferredFont(forTextStyle: .body).pointSize)
            }
            
            Text(userName)
            
            Spacer()
        }
        .padding(.vertical, 4)
        .accessibilityElement(children: .combine)
        .accessibilityValue("Username")
    }
}

struct RepositoryOwnerLabel_Previews: PreviewProvider {
    static var previews: some View {
        RepositoryOwnerLabel(userName: "test")
            .overlay {
                Rectangle().stroke()
            }
    }
}
