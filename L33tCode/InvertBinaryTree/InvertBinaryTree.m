//
//  InvertBinaryTree.m
//  L33tCode
//
//  Created by Matt Moncur on 2016-11-10.
//  Copyright © 2016 Moncur. All rights reserved.
//

#import "InvertBinaryTree.h"

@implementation InvertBinaryTree

- (TreeNode *)invertTree: (TreeNode *) root {
    // will only be nil for a child of a leaf node
    if (root == nil) {
        return nil;
    }
    
    // invert nodes by flipping pointer references
    TreeNode *left = root.left;
    TreeNode *right = root.right;
    root.left = right;
    root.right = left;
    
    // invert child nodes
    root.left = [self invertTree:root.left];
    root.right = [self invertTree:root.right];
    
    return root;
}

@end
