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
        ThreeSum.threeSum(nums: [1,-2+3,3,-1+3,2,0+1,4], target: 0)
//        let res = MajorityElement.majorityElement([1,3,2,3,2,4]);
        
//        let list1 = PPSinglyLinkedList.init(head: PPLinkedListNode(1))
//        list1.pp_appendNode(3)
//        list1.pp_appendNode(5)
//        let list2 = PPSinglyLinkedList.init(head: PPLinkedListNode(2))
//        list2.pp_appendNode(4)
//        list2.pp_appendNode(6)
//        //合并
//        let merge1 = list1.head?.mergeSortedLists(list2.head!)
        
//        let mergedList = list1.pp_mergeTwoOrderedLinkList(list1: list1, list2: list2)
//
//        let ppPPStackDemo = PPStackDemo.init()
//        ppPPStackDemo.simplifyPath(path: "/a/b/./../d/")
//
//        let ppPPArrayDemo = PPArrayDemo.init()
//        let ppPPArrayDemoR = ppPPArrayDemo.reverseWords(s: "swift")
//        print(ppPPArrayDemoR)
//        let headPoint = PPLinkedListNode(1)
//
//        let ppLinkList = PPSinglyLinkedList.init(head: headPoint)
//        ppLinkList.pp_appendNode(6)
//        ppLinkList.pp_appendNode(4)
//        ppLinkList.pp_appendNode(2)
//        ppLinkList.pp_appendNode(5)
//        ppLinkList.pp_appendNode(3)
//        ppLinkList.removeNthFromEnd(head: headPoint, 3)
//        print(ppLinkList)
//        let res = ppLinkList.partition(headPoint, 4)
//        let aaa = ppLinkList.getLeftList(headPoint, 4)
//        let longestPalindromicSubstringObj = LongestPalindromicSubstring.init()
//        let longestPalindromicSubstring = longestPalindromicSubstringObj.longestPalindrome("iambabygirl")
        
        let tree = PPSearchTree.init(rootNode: nil)
        tree.insert(4)
        tree.insert(1)
        tree.insert(2)
        tree.insert(5)
    }
}
