//
//  AttributesTests.swift
//  AttributesTests
//
//  Created by hoonhoon on 2017. 11. 29..
//  Copyright © 2017년 hoonhoon. All rights reserved.
//

import XCTest
@testable import Attributes

class AttributesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testExample() {
		let sample = NSAttributedString(string: "Hello", attributes: [.foregroundColor: UIColor.red, .backgroundColor: UIColor.yellow])
		let target = "Hello".attributes
			.with(attributes: .foreground(.red))
			.with(attributes: .background(.yellow))
		XCTAssertEqual(sample, target)
    }
    
}
