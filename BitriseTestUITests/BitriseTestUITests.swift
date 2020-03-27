//
//  BitriseTestUITests.swift
//  BitriseTestUITests
//
//  Created by Claudio Carvalho on 26/03/20.
//  Copyright © 2020 Claudio Carvalho. All rights reserved.
//

import XCTest

class BitriseTestUITests: XCTestCase {

    let application = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        application.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testFixedComponentsOnScreenExists() {
        let exists = NSPredicate(format: "exists == true")
        
        expectation(for: exists, evaluatedWith: application.staticTexts["Continuous Integration"]) { () -> Bool in
            return true
        }
        
        expectation(for: exists, evaluatedWith: application.buttons["Automating Everything"]) { () -> Bool in
            return true
        }
        
        waitForExpectations(timeout: 5.0) { (error) in
            if let notFoundError = error {
                XCTFail(notFoundError.localizedDescription)
            }
        }
    }
}
