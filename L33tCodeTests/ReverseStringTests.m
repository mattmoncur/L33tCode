//
//  ReverseStringTests.m
//  L33tCode
//
//  Created by Matt Moncur on 2016-11-09.
//  Copyright © 2016 Moncur. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ReverseString.h"

@interface ReverseStringTests : XCTestCase

@end

@implementation ReverseStringTests

- (void)testThatHelloReversesToOlleh {
    ReverseString *reverseString = [[ReverseString alloc] init];
    NSString *input = @"hello";
    NSString *result = [reverseString reverse: input];
    XCTAssertEqualObjects(result, @"olleh");
}

- (void)testThatMoncurReversesToRucnom {
    ReverseString *reverseString = [[ReverseString alloc] init];
    NSString *input = @"moncur";
    NSString *result = [reverseString reverse: input];
    XCTAssertEqualObjects(result, @"rucnom");
}

- (void)testThatRacecarReversedDoesntChange {
    ReverseString *reverseString = [[ReverseString alloc] init];
    NSString *input = @"racecar";
    NSString *result = [reverseString reverse: input];
    XCTAssertEqualObjects(result, @"racecar");
}

@end
