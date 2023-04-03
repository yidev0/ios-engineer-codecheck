//
//  iOSEngineerCodeCheckTests.swift
//  iOSEngineerCodeCheckTests
//
//  Created by 史 翔新 on 2020/04/20.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import XCTest
@testable import iOSEngineerCodeCheck

class iOSEngineerCodeCheckTests: XCTestCase {

    func testGithubRepoAPI() {
        let fetcher = GitHubFetcher.shared
        let expectation = expectation(description: "Repo Fetched")
        fetcher.fetch("Swift") { repos, error in
            if !repos.isEmpty {
                expectation.fulfill()
            }
        }
        
        wait(for: [expectation], timeout: 5)
    }
    
    func testGithubJapaneseRepoAPI() {
        let fetcher = GitHubFetcher.shared
        let expectation = expectation(description: "Repo Fetched JP")
        fetcher.fetch("スウィフト") { repos, error in
            if !repos.isEmpty {
                expectation.fulfill()
            }
        }
        
        wait(for: [expectation], timeout: 5)
    }

}
