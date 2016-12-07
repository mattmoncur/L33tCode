//
//  Node.swift
//  L33tCode
//
//  Created by Matt Moncur on 2016-12-05.
//  Copyright © 2016 Moncur. All rights reserved.
//

import Foundation

class Node {
    var value: String;
    var left: Node?;
    var right: Node?;
    
    init(with value: String) {
        self.value = value;
    }
}
