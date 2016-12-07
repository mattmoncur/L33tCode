//
//  Stack.swift
//  L33tCode
//
//  Created by Matt Moncur on 2016-12-05.
//  Copyright © 2016 Moncur. All rights reserved.
//

import Foundation

class Stack<T> {
    
    private var array: [T];
    
    init() {
        array = [];
    }
    
    func push(_ e: T) {
        array.append(e);
    }
    
    func pop() -> T? {
        if array.isEmpty {
            return nil;
        }
        
        return array.removeLast();
    }
    
}
