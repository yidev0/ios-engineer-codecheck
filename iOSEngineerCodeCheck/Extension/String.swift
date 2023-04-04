//
//  String.swift
//  iOSEngineerCodeCheck
//
//  Created by Yuto on 2023/04/02.
//  Copyright © 2023 YUMEMI Inc. All rights reserved.
//

import Foundation

extension String {
    
    var localized: String {
        return NSLocalizedString(self, comment: self)
    }
    
}
