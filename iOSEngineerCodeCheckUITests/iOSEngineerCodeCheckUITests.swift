//
//  iOSEngineerCodeCheckUITests.swift
//  iOSEngineerCodeCheckUITests
//
//  Created by 史 翔新 on 2020/04/20.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import XCTest

class iOSEngineerCodeCheckUITests: XCTestCase {

    var app: XCUIApplication!
    
    override func setUp() {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launchArguments = ["testing"]
        app.launch()
    }
    
    func testLaunch() {
        XCTAssertTrue(app.staticTexts["Root View Controller"].exists)
        XCTAssertTrue(app.tables["Repository Table"].exists)
        XCTAssertTrue(app.otherElements["Repository Search"].exists)
    }
    
    func testEnglishSearch() {
        let searchField = app.otherElements["Repository Search"]
        searchField.tap()
        searchField.typeText("Swift")
        app.buttons["Search"].tap()
        
        let cell = app.staticTexts["apple/swift"]
        cell.tap()
        
        let title = app.staticTexts["swift"]
        XCTAssertTrue(title.exists)
    }
    
    func testJapaneseSearch() {
        let searchField = app.otherElements["Repository Search"]
        searchField.tap()
        searchField.typeText("スウィフト")
        app.buttons["Search"].tap()
        
        XCTAssertTrue(app.tables["Repository Table"].cells.element.exists)
    }
    
    func testEmojiSearch() {
        let searchField = app.otherElements["Repository Search"]
        searchField.tap()
        searchField.typeText("💻")
        app.buttons["Search"].tap()
        
        XCTAssertFalse(app.tables["Repository Table"].cells.element.exists)
    }
    
}
