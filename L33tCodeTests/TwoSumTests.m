//
//  TwoSumTests.m
//  L33tCode
//
//  Created by Matt Moncur on 2016-11-03.
//  Copyright © 2016 Moncur. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TwoSum.h"

@interface TwoSumTests : XCTestCase

@end

@implementation TwoSumTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatIndicesZeroAndOneReturnedForTargetNine {
    //Array: [2, 7, 11, 15]
    NSMutableArray<NSNumber *> *myArray = [NSMutableArray new];
    [myArray addObject:[NSNumber numberWithInt:2]];
    [myArray addObject:[NSNumber numberWithInt:7]];
    [myArray addObject:[NSNumber numberWithInt:11]];
    [myArray addObject:[NSNumber numberWithInt:15]];
    
    TwoSum *twoSum = [[TwoSum alloc] init];
    
    NSArray *result = [twoSum findIndicesForSum:9 inArray:myArray];
    
    XCTAssertEqualObjects(result[0], [NSNumber numberWithInt:0]);
    XCTAssertEqualObjects(result[1], [NSNumber numberWithInt:1]);
}

@end
