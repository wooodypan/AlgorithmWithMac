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
        
        
        
        
    }
    
    @objc func printLog() -> Void {
        print("Swft算法入口")
        let longestPalindromicSubstringObj = LongestPalindromicSubstring.init()
        let longestPalindromicSubstring = longestPalindromicSubstringObj.longestPalindrome("iambabygirl")
        
        let tree = PPSearchTree.init(rootNode: nil)
        tree.insert(4)
        tree.insert(1)
        tree.insert(2)
        tree.insert(5)
    }
}
