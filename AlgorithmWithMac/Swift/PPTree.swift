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
    var leftNode:PPSearchTreeNode? = nil;
    var rightNode:PPSearchTreeNode? = nil;

    
    init(value:Int) {
        self.value = value
    }
    
}



open class PPSearchTree: NSObject {
    var rootNode:PPSearchTreeNode? = nil;
    
    init(rootNode:PPSearchTreeNode?) {
        self.rootNode = rootNode
    }
    
    func insert(_ num:Int) -> Void {
        let node = PPSearchTreeNode.init(value: num)
        if (self.rootNode == nil) {
            self.rootNode = node;
            return
        }
        if let prent = getPrev(num: num, find: false) {
            if (num < prent.value) {
                prent.leftNode = node;
            } else {
                prent.rightNode = node;
            }
            print("insert num=\(num)")
        }
    }
    
    func getPrev(num:Int,find:Bool) -> PPSearchTreeNode? {
        let point = self.rootNode
        var res:Array<PPSearchTreeNode> = []
        if let point = point {
            
        var newPoint:PPSearchTreeNode! = point
        while (true) {
            if ((newPoint.leftNode) != nil) {
                if (num < point.leftNode?.value ?? 0 || num < point.value) {
                    newPoint = point.leftNode
                    continue
                }
            }

            if ((newPoint.rightNode) != nil) {
                if (num >= point.rightNode?.value ?? 0 || num >= point.value) {
                    //搜索时如果有多个值则缓存
                    if (find && num == point.value) {
                        res.append(point);
                    }
                    newPoint = point.rightNode;
                    continue
                }
            }
            //如果是搜索
            if (find) {
                if (point.value == num) {
                    res.append(point);
                }

                if (res.count == 0) {
                    return nil
                }

                if (res.count == 1) {
                    return res[0];
                }
                #warning("这里应该是数组res")
                return res[0];
            }
            //如果是添加 返回的是应该添加的那各节点的父节点
            return newPoint;
        }
        
        
        }
        return nil
        
    }
    
    
}
