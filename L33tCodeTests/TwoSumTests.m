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

- (void)testThatIndicesOneAndTwoReturnedForTargetEighteen {
    //Array: [2, 7, 11, 15]
    NSMutableArray<NSNumber *> *myArray = [NSMutableArray new];
    [myArray addObject:[NSNumber numberWithInt:2]];
    [myArray addObject:[NSNumber numberWithInt:7]];
    [myArray addObject:[NSNumber numberWithInt:11]];
    [myArray addObject:[NSNumber numberWithInt:15]];
    
    TwoSum *twoSum = [[TwoSum alloc] init];
    
    NSArray *result = [twoSum findIndicesForSum:18 inArray:myArray];
    
    XCTAssertEqualObjects(result[0], [NSNumber numberWithInt:1]);
    XCTAssertEqualObjects(result[1], [NSNumber numberWithInt:2]);
}

- (void)testThatIndicesOneAndThreeReturnedForTargetTwentyTwo {
    //Array: [2, 7, 11, 15]
    NSMutableArray<NSNumber *> *myArray = [NSMutableArray new];
    [myArray addObject:[NSNumber numberWithInt:2]];
    [myArray addObject:[NSNumber numberWithInt:7]];
    [myArray addObject:[NSNumber numberWithInt:11]];
    [myArray addObject:[NSNumber numberWithInt:15]];
    
    TwoSum *twoSum = [[TwoSum alloc] init];
    
    NSArray *result = [twoSum findIndicesForSum:22 inArray:myArray];
    
    XCTAssertEqualObjects(result[0], [NSNumber numberWithInt:1]);
    XCTAssertEqualObjects(result[1], [NSNumber numberWithInt:3]);
}

- (void)testThatIndicesZeroAndThreeReturnedForTargetSeventeen {
    //Array: [2, 7, 11, 15]
    NSMutableArray<NSNumber *> *myArray = [NSMutableArray new];
    [myArray addObject:[NSNumber numberWithInt:2]];
    [myArray addObject:[NSNumber numberWithInt:7]];
    [myArray addObject:[NSNumber numberWithInt:11]];
    [myArray addObject:[NSNumber numberWithInt:15]];
    
    TwoSum *twoSum = [[TwoSum alloc] init];
    
    NSArray *result = [twoSum findIndicesForSum:17 inArray:myArray];
    
    XCTAssertEqualObjects(result[0], [NSNumber numberWithInt:0]);
    XCTAssertEqualObjects(result[1], [NSNumber numberWithInt:3]);
}

@end
