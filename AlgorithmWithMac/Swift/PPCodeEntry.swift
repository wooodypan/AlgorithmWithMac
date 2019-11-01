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
        let headPoint = PPLinkedListNode(1)

        let ppLinkList = PPSinglyLinkedList.init()
        ppLinkList.pp_appendNode(headPoint)
        ppLinkList.pp_appendNode(6)
        ppLinkList.pp_appendNode(4)
        ppLinkList.pp_appendNode(2)
        ppLinkList.pp_appendNode(5)
        ppLinkList.pp_appendNode(3)
        ppLinkList.removeNthFromEnd(head: headPoint, 3)
        print(ppLinkList)
        let res = ppLinkList.partition(headPoint, 4)
        let aaa = ppLinkList.getLeftList(headPoint, 4)
//        let longestPalindromicSubstringObj = LongestPalindromicSubstring.init()
//        let longestPalindromicSubstring = longestPalindromicSubstringObj.longestPalindrome("iambabygirl")
        
        let tree = PPSearchTree.init(rootNode: nil)
        tree.insert(4)
        tree.insert(1)
        tree.insert(2)
        tree.insert(5)
    }
}
