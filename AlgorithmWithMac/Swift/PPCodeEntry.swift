//
//  PPCodeEntry.swift
//  AlgorithmWithMac
//
//  Created by panwei on 2019/10/28.
//  Copyright © 2019 WeirdPan. All rights reserved.
//

import Foundation


open class PPCodeEntry : NSObject {
    public override init() {
        let tree = PPSearchTree.init()
        tree.insert(num: 4)
    }
    
    @objc func printLog() -> Void {
        print("Swft算法入口")
    }
}
