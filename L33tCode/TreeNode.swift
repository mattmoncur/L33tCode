//
//  TreeNode.swift
//  L33tCode
//
//  Created by Matt Moncur on 2016-11-10.
//  Copyright © 2016 Moncur. All rights reserved.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}
