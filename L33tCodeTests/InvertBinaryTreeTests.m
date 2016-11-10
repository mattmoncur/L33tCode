//
//  InvertBinaryTreeTests.m
//  L33tCode
//
//  Created by Matt Moncur on 2016-11-10.
//  Copyright © 2016 Moncur. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "InvertBinaryTree.h"
#import "TreeNode.h"

@interface InvertBinaryTreeTests : XCTestCase

@end

@implementation InvertBinaryTreeTests

//TODO: implement a proper Tree Comparator

/* Expect:
      4
    /   \
   7     2
  / \   / \
 9   6 3   1
 
 */
- (void) testThatCanInvertBinaryTreeOfDepthThree {
    InvertBinaryTree *invertBinaryTree = [[InvertBinaryTree alloc] init];
    TreeNode *root = [self createTree];
    
    TreeNode *inverted = [invertBinaryTree invertTree:root];
    
    XCTAssertEqual(inverted.left.val, 7);
    XCTAssertEqual(inverted.right.val, 2);
    
    XCTAssertEqual(inverted.left.left.val, 9);
    XCTAssertEqual(inverted.left.right.val, 6);
    
    XCTAssertEqual(inverted.right.left.val, 3);
    XCTAssertEqual(inverted.right.right.val, 1);
}

/*
      4
    /   \
   2     7
  / \   / \
 1   3 6   9
 
 */
- (TreeNode *) createTree {
    TreeNode *root = [[TreeNode alloc] initWithValue:4];
    
    root.left = [[TreeNode alloc] initWithValue:2];
    root.right = [[TreeNode alloc] initWithValue:7];
    
    root.left.left = [[TreeNode alloc] initWithValue:1];
    root.left.right = [[TreeNode alloc] initWithValue:3];
    
    root.right.left = [[TreeNode alloc] initWithValue:6];
    root.right.right = [[TreeNode alloc] initWithValue:9];
    
    return root;
}

@end
