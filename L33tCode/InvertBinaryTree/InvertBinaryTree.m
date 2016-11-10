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
    //protect against leaf nodes
    if (root == nil) {
        return nil;
    }
    
    //before flipping nodes, recursively call invert to traverse down the tree, then bubble back up making invert left and right
    TreeNode *right = [self invertTree:root.right];
    TreeNode *left = [self invertTree:root.left];
    
    //invert nodes
    root.left = right;
    root.right = left;
    
    return root;
}

@end
