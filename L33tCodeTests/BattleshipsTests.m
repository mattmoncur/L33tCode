//
//  BattleshipsTests.m
//  L33tCode
//
//  Created by Matt Moncur on 2016-11-09.
//  Copyright © 2016 Moncur. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Battleships.h"

@interface BattleshipsTests : XCTestCase

@end

@implementation BattleshipsTests

- (void) testThatOneLargeBattleshipIsFound {
    Battleships *battleships = [[Battleships alloc] init];
    NSArray *board = @[
                       @[@".", @".", @".", @"X"],
                       @[@".", @".", @".", @"X"],
                       @[@".", @".", @".", @"X"],
                       @[@".", @".", @".", @"X"],
                       ];
    
    int count = [battleships countBattleships:board];
    XCTAssertEqual(count, 1);
}

- (void) testThatTwoLargeBattleshipsAreFound {
    Battleships *battleships = [[Battleships alloc] init];
    NSArray *board = @[
                       @[@"X", @"X", @"X", @"X"],
                       @[@".", @".", @".", @"."],
                       @[@".", @".", @".", @"."],
                       @[@"X", @"X", @"X", @"X"],
                       ];
    int count = [battleships countBattleships:board];
    XCTAssertEqual(count, 2);
}

- (void) testThatOneSmallAndOneLargeBattleshipAreFound {
    Battleships *battleships = [[Battleships alloc] init];
    NSArray *board = @[
                       @[@"X", @".", @".", @"X"],
                       @[@".", @".", @".", @"X"],
                       @[@".", @".", @".", @"X"],
                       @[@".", @".", @".", @"X"],
                       ];
    int count = [battleships countBattleships:board];
    XCTAssertEqual(count, 2);
}



@end
