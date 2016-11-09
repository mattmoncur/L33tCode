//
//  Battleships.m
//  L33tCode
//
//  Created by Matt Moncur on 2016-11-09.
//  Copyright © 2016 Moncur. All rights reserved.
//

#import "Battleships.h"

@implementation Battleships

- (int)countBattleships: (NSArray *)board {
    int count = 0;
    
    NSMutableArray *visitedCoordinates = [NSMutableArray array];
    
    for (int y = 0; y < board.count; y++) {
        NSArray *row = (NSArray *)board[y];
        for (int x = 0; x < row.count; x++) {
            NSString *currentCoordinate = [self coordinateFormatterWithX:x andY:y];
            BOOL coordinateAlreadyVisited = [visitedCoordinates containsObject: currentCoordinate];
            NSString *value = row[x];
            
            if ([value isEqualToString:@"X"] && !coordinateAlreadyVisited) {
                NSArray *battleshipCoordinates = [self findCoordinatesForBattleshipInBoard:board atX:x andY:y];
                [visitedCoordinates addObjectsFromArray: battleshipCoordinates];
                count ++;
            }
            
        }
    }
    
    return count;
}


/*
 *  Since we know that we are traversing top -> down, left -> right do not check back. Returns visited coordinates
 */
- (NSArray *) findCoordinatesForBattleshipInBoard: (NSArray *) board atX: (int) x andY: (int) y {
    NSMutableArray *battleshipCoordinates = [NSMutableArray array];
    [battleshipCoordinates addObject: [self coordinateFormatterWithX:x andY:y]];
    
    
    //Assuming a valid board. Traverse vertical and horiztonal
    
    //Horizontal
    NSArray *row = (NSArray *)board[y];
    for (int i = x+1; i < row.count; i++) {
        NSString *value = row[i];
        if ([value isEqualToString:@"X"]) {
            [battleshipCoordinates addObject: [self coordinateFormatterWithX:i andY:y]];
        }
    }
    
    //Vertical - Descending
    for (int j = y+1; j < board.count; j++) {
        NSArray *row = (NSArray *)board[j];
        NSString *value = row[x];
        if ([value isEqualToString:@"X"]) {
            [battleshipCoordinates addObject: [self coordinateFormatterWithX:x andY:j]];
        }
    }
    
    //TODO: would be smart about determine where to traverse horizonal or vertical
    
    return battleshipCoordinates;
}


- (NSString *) coordinateFormatterWithX: (int) x andY: (int) y {
    return [NSString stringWithFormat:@"%d,%d", x, y];
}










@end
