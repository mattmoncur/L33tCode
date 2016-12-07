//
//  TreeTraversal.swift
//  L33tCode
//
//  Created by Matt Moncur on 2016-12-05.
//  Copyright © 2016 Moncur. All rights reserved.
//

import Foundation

class TreeTraversal {

    func depthFirst(_ root: Node?) {
        guard let root = root else { return }
        
        print(root.value);
        depthFirst(root.left);
        depthFirst(root.right);
    }
    
    func breathFirst(_ root: Node) {
        let q = Queue<Node>();
        
        q.enqueue(root);
        
        while !q.isEmpty() {
            let n = q.dequeue();
            print (n?.value);
            
            if let left = n?.left {
                q.enqueue(left);
            }
            if let right = n?.right {
                q.enqueue(right);
            }
        }
        
        
    }
    
}
