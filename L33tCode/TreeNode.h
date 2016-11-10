//
//  TreeNode.h
//  L33tCode
//
//  Created by Matt Moncur on 2016-11-10.
//  Copyright © 2016 Moncur. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TreeNode : NSObject

@property int val;
@property TreeNode *left;
@property TreeNode *right;

- (instancetype)init;
- (instancetype) initWithValue: (int) val;

@end
