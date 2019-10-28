//
//  PPTree.swift
//  AlgorithmWithMac
//
//  Created by panwei on 2019/10/28.
//  Copyright © 2019 WeirdPan. All rights reserved.
//

import Foundation

class PPSearchTreeNode: NSObject {
    var value = 0
    var left:PPSearchTreeNode? = nil;
    var right:PPSearchTreeNode? = nil;

    
    init(value:Int) {
        self.value = value
    }
    
}



open class PPSearchTree: NSObject {
    open func insert(num:Int) -> Void {
        print("insert num=\(num)")
    }
    
    
    
}
