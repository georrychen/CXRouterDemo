//
//  CTMediator+ModuleBActions.m
//  CXRouterDemo
//
//  Created by Xu Chen on 2019/7/5.
//  Copyright © 2019 xu.yzl. All rights reserved.
//

#import "CTMediator+ModuleBActions.h"

//  1. 字符串 是类名 Target_xxx.h 中的 xxx 部分
NSString * const kCTMediatorTarget_Course = @"ModuleB";

//  2. 字符串是 Target_xxx.h 中 定义的 Action_xxxx 函数名的 xxx 部分
NSString * const kCTMediatorActionNativTo_nativeCourseListPage = @"nativeBViewController";

@implementation CTMediator (ModuleBActions)

- (UIViewController *)cx_mediator_viewControllerForBWithParams:(NSDictionary *)dict {
    UIViewController *viewController = [self performTarget:kCTMediatorTarget_Course
                                                    action:kCTMediatorActionNativTo_nativeCourseListPage
                                                    params:dict
                                         shouldCacheTarget:NO
                                        ];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return viewController;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        NSLog(@"%@ 未能实例化页面", NSStringFromSelector(_cmd));
        return [[UIViewController alloc] init];
    }
}


@end
