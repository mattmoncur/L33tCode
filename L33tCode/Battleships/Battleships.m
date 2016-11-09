//
//  Battleships.m
//  L33tCode
//
//  Created by Matt Moncur on 2016-11-09.
//  Copyright © 2016 Moncur. All rights reserved.
//

#import "Battleships.h"

@implementation Battleships

NSString *const ShipIndicator = @"X";

/*
 * Traverses through the board counting unique battleships. 
 * Battleships must have space between each other and run vertically or horizontally.
 */
- (int)countBattleships: (NSArray *)board {
    int count = 0;
    NSMutableArray *visitedCoordinates = [NSMutableArray array];
    
    // Traverse through the board top -> down, left -> right
    for (int y = 0; y < board.count; y++) {
        NSArray *row = (NSArray *)board[y];
        for (int x = 0; x < row.count; x++) {
            
            BOOL coordinateAlreadyVisited = [visitedCoordinates containsObject: [self coordinateFormatterWithX:x andY:y]];
            //If discovered a new ship, increment the count and store coordinates for battleship so unique ships are detected
            NSString *currentValue = row[x];
            if ([currentValue isEqualToString:ShipIndicator] && !coordinateAlreadyVisited) {
                NSArray *battleshipCoordinates = [self findCoordinatesForBattleshipInBoard:board atX:x andY:y];
                [visitedCoordinates addObjectsFromArray: battleshipCoordinates];
                count ++;
            }
            
        }
    }
    
    return count;
}

/*
 *  Finds all coordinates for battleship, starting at point x,y.
 */
- (NSArray *) findCoordinatesForBattleshipInBoard: (NSArray *) board atX: (int) x andY: (int) y {
    NSMutableArray *battleshipCoordinates = [NSMutableArray array];
    //Record current coordinate
    [battleshipCoordinates addObject: [self coordinateFormatterWithX:x andY:y]];
    
    //TODO: Determine whether to traverse horizonal or vertical. Don't just assume that board is valid
    [battleshipCoordinates addObjectsFromArray: [self traverseBattleShipHorizontallyInBoard:board atX:x andY:y]];
    [battleshipCoordinates addObjectsFromArray: [self traverseBattleShipVerticallyInBoard:board atX:x andY:y]];
    
    return battleshipCoordinates;
}


/*
 * Starting at x traverses horizontally from left -> right. 
 * Assumes that all values to the left of x have already been traversed
 */
- (NSArray *) traverseBattleShipHorizontallyInBoard: (NSArray *) board atX: (int) x andY: (int) y {
    NSMutableArray *horizontalCoordinates = [NSMutableArray array];
    
    NSArray *row = (NSArray *)board[y];
    for (int i = x+1; i < row.count; i++) {
        NSString *value = row[i];
        if ([value isEqualToString:ShipIndicator]) {
            [horizontalCoordinates addObject: [self coordinateFormatterWithX:i andY:y]];
        }
    }
    
    return horizontalCoordinates;
}

/*
 * Starting at y traverses vertically from top -> bottom.
 * Assumes that all values to the above of y have already been traversed
 */
- (NSArray *) traverseBattleShipVerticallyInBoard: (NSArray *) board atX: (int) x andY: (int) y {
    NSMutableArray *verticalCoordinates = [NSMutableArray array];
    
    for (int j = y+1; j < board.count; j++) {
        NSArray *row = (NSArray *)board[j];
        NSString *value = row[x];
        if ([value isEqualToString:ShipIndicator]) {
            [verticalCoordinates addObject: [self coordinateFormatterWithX:x andY:j]];
        }
    }
    
    return verticalCoordinates;
}

/*
 * Common formatter for coordinates given and x and y value
 */
- (NSString *) coordinateFormatterWithX: (int) x andY: (int) y {
    return [NSString stringWithFormat:@"%d,%d", x, y];
}

@end
