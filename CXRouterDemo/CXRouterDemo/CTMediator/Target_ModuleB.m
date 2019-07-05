//
//  Target_ModuleB.m
//  CXRouterDemo
//
//  Created by Xu Chen on 2019/7/5.
//  Copyright © 2019 xu.yzl. All rights reserved.
//

#import "Target_ModuleB.h"
#import "ModuleBViewController.h"

@implementation Target_ModuleB

- (UIViewController *)Action_nativeBViewController:(NSDictionary *)params {
    ModuleBViewController *viewController = [[ModuleBViewController alloc] init];
    NSLog(@"B 页面接受到的参数 - %@",params);
    return viewController;
}


@end
