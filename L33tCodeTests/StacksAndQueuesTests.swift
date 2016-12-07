//
//  StacksAndQueuesTests.swift
//  L33tCode
//
//  Created by Matt Moncur on 2016-12-05.
//  Copyright © 2016 Moncur. All rights reserved.
//

import XCTest
@testable import L33tCode

class StacksAndQueuesTests: XCTestCase {
    
    func testStacks() {
        let myStack = Stack<String>();
        myStack.push("A");
        myStack.push("B");
        myStack.push("C");
        myStack.push("D");
        
        print (myStack.pop());
        print (myStack.pop());
        print (myStack.pop());
        print (myStack.pop());
    }
    
    func testQueues() {
        let myQueue = Queue<String>();
        myQueue.enqueue("A");
        myQueue.enqueue("B");
        myQueue.enqueue("C");
        myQueue.enqueue("D");
        
        print(myQueue.dequeue());
        print(myQueue.dequeue());
        print(myQueue.dequeue());
        print(myQueue.dequeue());
    }
    
    func testBinaryTreeTraversal() {
        let root = Node(with: "A");
        root.left = Node(with: "B");
        root.right = Node(with: "C");
        
        root.left?.left = Node(with: "D");
        root.left?.right = Node(with: "E");
        
        root.right?.left = Node(with: "F");
        root.right?.right = Node(with: "G");
        
        let traversal = TreeTraversal();
        
        print ("Depth First");
        traversal.depthFirst(root);
        
        
        print ("Breadth First");
        traversal.breathFirst(root);
    }
    
}
