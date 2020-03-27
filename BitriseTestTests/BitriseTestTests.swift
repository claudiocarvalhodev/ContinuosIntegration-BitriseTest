//
//  BitriseTestTests.swift
//  BitriseTestTests
//
//  Created by Claudio Carvalho on 26/03/20.
//  Copyright © 2020 Claudio Carvalho. All rights reserved.
//

import XCTest
@testable import BitriseTest

class BitriseTestTests: XCTestCase {

    var viewController: ViewController?
    
    override func setUp() {
        super.setUp()
        viewController = ViewController()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testValidSumWithValidResult() {
        let num1: Double = 4.0
        let num2: Double = 4.0
        
        let result: Double? = viewController?.sum(num1, with: num2)
        XCTAssertNotNil(result, "Verificando se o meu objeto Result não é nil")
        XCTAssertEqual(result, 8.0, "A soma dos dois valores deve ser igual a 8.0")
    }
    
    func testSumWithInvalidResult() {
        let num1: Double = 2.0
        let num2: Double = 7.0
        
        let result: Double? = viewController?.sum(num1, with: num2)
        XCTAssertNotNil(result, "Verificando se o meu objeto Result não é nil")
        XCTAssertNotEqual(result, 10.0, "A soma dos dois valores deve ser igual a 9.0")
    }

}
