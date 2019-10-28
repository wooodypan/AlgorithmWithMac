//
//  ViewController.m
//  AlgorithmWithMac
//
//  Created by panwei on 2019/10/24.
//  Copyright © 2019 WeirdPan. All rights reserved.
//

#import "ViewController.h"
#import <AlgorithmWithMac-Swift.h>

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    PPLinkList *link = [[PPLinkList alloc] init];
    [link reverseLinkList];
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
