//
//  BinarySearchTests.swift
//  L33tCode
//
//  Created by Matt Moncur on 2016-12-01.
//  Copyright © 2016 Moncur. All rights reserved.
//

import XCTest
@testable import L33tCode

class BinarySearchTests: XCTestCase {
    
    func testBinarySearch() {
        let index = BinarySearch().binarySearchArray([1,2,3,4,5,6,7,8,9,10], searchItem: 5)
        XCTAssertEqual(index, 4);
    }
    
}
