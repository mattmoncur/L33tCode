//
//  TreeNode.m
//  L33tCode
//
//  Created by Matt Moncur on 2016-11-10.
//  Copyright © 2016 Moncur. All rights reserved.
//

#import "TreeNode.h"

@implementation TreeNode

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.val = 0;
        self.left = nil;
        self.right = nil;
    }
    return self;
}


- (instancetype) initWithValue: (int) val {
    self = [super init];
    if (self) {
        self.val = val;
        self.left = nil;
        self.right = nil;
    }
    return self;
}

@end
