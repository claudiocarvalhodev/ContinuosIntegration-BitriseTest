//
//  BitriseTestUITests.swift
//  BitriseTestUITests
//
//  Created by Claudio Carvalho on 26/03/20.
//  Copyright © 2020 Claudio Carvalho. All rights reserved.
//

import XCTest

class BitriseTestUITests: XCTestCase {

    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testFixedComponentsOnScreenExists() {
        let exists = NSPredicate(format: "exists == true")
        
        expectation(for: exists, evaluatedWith: app.staticTexts["Continuous Integration"]) { () -> Bool in
            return true
        }
        
        expectation(for: exists, evaluatedWith: app.buttons["Automating Everything"]) { () -> Bool in
            return true
        }
        
        waitForExpectations(timeout: 5.0) { (error) in
            if let notFoundError = error {
                XCTFail(notFoundError.localizedDescription)
            }
        }
    }
}
