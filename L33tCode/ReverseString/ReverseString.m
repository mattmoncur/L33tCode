//
//  ReverseString.m
//  L33tCode
//
//  Created by Matt Moncur on 2016-11-03.
//  Copyright © 2016 Moncur. All rights reserved.
//

#import "ReverseString.h"

@implementation ReverseString

- (NSString *) reverse: (NSString *)inputString {
    NSMutableString *reversed = [NSMutableString string];
    
    //Using length - 1 because it is zero indexed
    int length = (int) inputString.length - 1;
    
    for (int i = length; i >= 0; i--) {
        char character = [inputString characterAtIndex:i];
        [reversed appendFormat:@"%c", character];
    }
    
    return reversed;
}

@end
