//
//  main.m
//  AlgorithmWithMac
//
//  Created by panwei on 2019/10/24.
//  Copyright © 2019 WeirdPan. All rights reserved.
//

#import <Cocoa/Cocoa.h>
//struct BinaryTreeNode {
//    int val;
//    BinaryTreeNode left;
//    BinaryTreeNode right;
//};

//void preOrder(struct BinaryTreeNode root) {
////    if (root == NULL) return;
//    printf("%s", root); // 此处为伪代码，表示打印 root 节点
//    preOrder(root.left);
//    preOrder(root.right);
//}


int main(int argc, const char * argv[]) {
//    struct BinaryTreeNode root1={
//        1,NULL,NULL};
//    root1->val = 1;
//    preOrder(root1);
    main_linkTable1();
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    
    NSLog(@"====");
    return NSApplicationMain(argc, argv);
}
