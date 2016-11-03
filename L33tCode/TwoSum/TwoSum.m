//
//  TwoSum.m
//  L33tCode
//
//  Created by Matt Moncur on 2016-11-03.
//  Copyright © 2016 Moncur. All rights reserved.
//

#import "TwoSum.h"

@implementation TwoSum

- (NSArray *)findIndicesForSum:(NSInteger)target inArray:(NSArray *)array {
    
    for (int i = 0; i < array.count; i++) {
        for (int j = 0; j < array.count; j++) {
            
            NSInteger num0 = ((NSNumber *)array[i]).integerValue;
            NSInteger num1 = ((NSNumber *)array[j]).integerValue;
            
            if (target == num0 + num1) {
                NSMutableArray *indices = [NSMutableArray array];
                [indices addObject:[NSNumber numberWithInt:i]];
                [indices addObject:[NSNumber numberWithInt:j]];
                return indices;
            }
            
        }
    }
    
    return nil;
}

@end
