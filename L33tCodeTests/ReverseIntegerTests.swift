//
//  ReverseInteger.swift
//  L33tCode
//
//  Created by Matt Moncur on 2016-12-03.
//  Copyright © 2016 Moncur. All rights reserved.
//

import XCTest
@testable import L33tCode

class ReverseIntegerTests: XCTestCase {
    
    func testReverseInteger() {
        let r = ReverseInteger();
        let result = r.reverse(123);
        XCTAssertEqual(result, 321);
    }
    
}
