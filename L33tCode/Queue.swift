//
//  Queue.swift
//  L33tCode
//
//  Created by Matt Moncur on 2016-12-05.
//  Copyright © 2016 Moncur. All rights reserved.
//

import Foundation

class Queue<T> {
    
    private var array:[T];
    
    init() {
        array = [];
    }
    
    func isEmpty() -> Bool {
        return array.isEmpty;
    }
    
    func enqueue(_ e: T) {
        array.append(e);
    }
    
    func dequeue() -> T? {
        if array.isEmpty {
            return nil;
        }
        
        return array.removeFirst();
    }
    
}
