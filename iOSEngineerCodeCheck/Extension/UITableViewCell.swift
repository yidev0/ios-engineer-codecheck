//
//  UITableViewCell.swift
//  iOSEngineerCodeCheck
//
//  Created by Yuto on 2023/03/28.
//  Copyright © 2023 YUMEMI Inc. All rights reserved.
//

import Foundation
import UIKit

extension UITableViewCell {
    
    func repositoryContentConfiguration(repository: Repository) -> UIListContentConfiguration {
        var content = self.defaultContentConfiguration()
        content.text = repository.fullName
        content.textProperties.color = .label
        content.secondaryText = repository.description
        content.secondaryTextProperties.color = .secondaryLabel
        
        self.contentConfiguration = content
        self.accessibilityIdentifier = "Repository Cell"
        return content
    }
    
}
