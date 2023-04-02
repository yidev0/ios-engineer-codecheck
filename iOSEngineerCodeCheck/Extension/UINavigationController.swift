//
//  UINavigationController.swift
//  iOSEngineerCodeCheck
//
//  Created by Yuto on 2023/04/02.
//  Copyright © 2023 YUMEMI Inc. All rights reserved.
//

import UIKit.UINavigationController

extension UINavigationController {
    
    func setupLargeTitle(disable: Bool = false) {
        self.navigationItem.largeTitleDisplayMode = disable ? .never:.always
        self.navigationBar.prefersLargeTitles = !disable
        self.navigationBar.sizeToFit()
    }
    
}
