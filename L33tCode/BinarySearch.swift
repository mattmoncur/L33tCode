//
//  BinarySearch.swift
//  L33tCode
//
//  Created by Matt Moncur on 2016-12-01.
//  Copyright © 2016 Moncur. All rights reserved.
//

import Foundation

class BinarySearch {
    
    func binarySearchArray (_ inputArray: [Int], searchItem: Int) -> Int? {
        var lower = 0;
        var upper = inputArray.count - 1;
        
        while (lower < upper) {
            let currentIndex = (lower + upper)/2;
            let currentValue = inputArray[currentIndex];
            
            if currentValue == searchItem {
                return currentIndex;
            }
            
            if currentValue > searchItem {
                upper = currentIndex - 1;
            } else {
                lower = currentIndex + 1;
            }
        }
        
        return nil;
    }
    
}
