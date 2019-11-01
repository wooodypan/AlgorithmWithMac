//
//  PPLinkList.swift
//  AlgorithmWithMac
//
//  Created by panwei on 2019/10/28.
//  Copyright © 2019 WeirdPan. All rights reserved.
//

import Foundation

//链表的节点
class PPLinkedListNode: NSObject {
    var value: Int = 0
    var next : PPLinkedListNode?
    
    init(_ value:Int) {
        self.value = value
        self.next = nil
    }
    override var description : String {
        var node:PPLinkedListNode? = self
        var des : Array<String> = []
        while node != nil {
            des.append("\(node?.value ?? 0)")
            node = node?.next
        }
        return "Node \(des)"
    }
}







//单向链表
class PPSinglyLinkedList: NSObject {
    var head:PPLinkedListNode?
    var tail:PPLinkedListNode?
    
    //
    func pp_appendNode(_ newNodeValue:Int) {
        if self.head == nil {
            self.head = PPLinkedListNode.init(newNodeValue)
        }
        else {
            var node = self.head
            while node?.next != nil {
                node = node?.next
            }
            node?.next = PPLinkedListNode.init(newNodeValue)
        }
    }
    func pp_appendNode(_ newNode:PPLinkedListNode)  {
        if self.head == nil {
            self.head = newNode
        }
        else {
            var node = self.head
            while node?.next != nil {
                node = node?.next
            }
            node?.next = newNode
        }
    }
    override var description : String {
        var node = self.head
        var des : Array<String> = []
        while node != nil {
//            if node!.value < x {
            des.append("\(node?.value ?? 0)")
//            }
            node = node!.next
        }
        return "PPLinkList \(des)"
    }
    override class func description() -> String {
        return ""
    }
    //举个例子，这里用❤️代表指针，小于3的值即1、2、2就是我们的目标
    //Node [❤️"1", "6", "4", ❤️"2", "5", ❤️"3"]
    //那么循环到数字2的时候把第一个指针的next指向第二颗星,链表就变成了
    //Node [❤️"1", ❤️"2", "5", ❤️"3"]
    func getLeftList(_ head: PPLinkedListNode?, _ x: Int) -> PPLinkedListNode? {
      let dummy = PPLinkedListNode(0)// Dummy 节点是虚拟的头前结点。我们引入它的原因是我们不知道要返回的新链表的头结点是哪一个
      var pre = dummy, node = head
     
      while node != nil {
        if node!.value < x {
            pre.next = node //dummy的next一直在变，但是dummy不会变（dummy是常量）
//            print(pre)
//            print("dummy=\(dummy)")
            pre = node!
//            print(pre)
//            print("dummy=\(dummy)")
//            print("\n")
        }
        node = node!.next
      }
     
      // 防止构成环
      pre.next = nil
      return dummy.next
    }
    //题目：给一个链表和一个值 x，要求将链表中所有小于 x 的值放到左边，所有大于等于 x 的值放到右边。原链表的节点顺序不能变。
    //例：1->5->3->2->4->2，给定x = 3。则我们要返回1->2->2->5->3->4
    //方法：先处理左边（比 x 小的节点），然后再处理右边（比 x 大的节点），最后再把左右两边拼起来（左边处理见getLeftList方法）。
    func partition(_ head: PPLinkedListNode?, _ x: Int) -> PPLinkedListNode? {
      // 引入Dummy节点
      let prevDummy = PPLinkedListNode(0), postDummy = PPLinkedListNode(0)
      var prev = prevDummy, post = postDummy
           
      var node = head
     
      // 用尾插法处理左边和右边
      while node != nil {
        if node!.value < x {
          prev.next = node
          prev = node!
        } else {
          post.next = node
          post = node!
        }
        node = node!.next
      }
     
      // 防止构成环
      post.next = nil
      // 左右拼接
      prev.next = postDummy.next
           
      return prevDummy.next
    }
    //问题：删除链表中倒数第 n 个节点。例：1->2->3->4->5，n = 2。返回1->2->3->5。 注意：给定 n 的长度小于等于链表的长度。
    //方法：两个指针移动速度相同。但是一开始，第一个指针prev（指向头结点之前）就落后第二个指针post n 个节点。接着两者同时移动，当第二个移动到尾节点时，第一个节点的下一个节点就是我们要删除的节点。
    // n=2时示例图如下：
    //[❤️"1", "2", ❤️"3", "6", "4", "5"]
    //["1", ❤️"2", "3", ❤️"6", "4", "5"]
    //["1", "2", ❤️"3", "6", ❤️"4", "5"]
    //["1", "2", "3", ❤️"6", "4", ❤️"5"]此时post.next=nil停止循环，让prev=prev.next.next即可删除节点
    func removeNthFromEnd(head: PPLinkedListNode?, _ n: Int) -> PPLinkedListNode? {
      guard let head = head else {
        return nil
      }
     
      let dummy = PPLinkedListNode(0)
      dummy.next = head
      var prev: PPLinkedListNode? = dummy
      var post: PPLinkedListNode? = dummy
     
      // 设置后一个节点初始位置
      for _ in 0 ..< n {
        if post == nil {
          break
        }
        post = post!.next
      }
     
      // 同时移动前后节点
      while post != nil && post!.next != nil {
        prev = prev!.next
        post = post!.next
      }
     
      // 删除节点
      prev!.next = prev!.next!.next
        
      return dummy.next
    }

    
    
    // 别人的尾插法
     func appendToTail(_ val: Int) {
       if tail == nil {
         tail = PPLinkedListNode(val)
         head = tail
       } else {
         tail!.next = PPLinkedListNode(val)
         tail = tail!.next
       }
     }
    
     // 别人的头插法
     func appendToHead(_ val: Int) {
       if head == nil {
         head = PPLinkedListNode(val)
         tail = head
       } else {
         let temp = PPLinkedListNode(val)
         temp.next = head
         head = temp
       }
     }
    
    
}

open class PPLinkList: NSObject {
//    override init() {
//
//    }
    
    
    @objc func reverseLinkList() -> Void {
        print("2333")
    }
}
