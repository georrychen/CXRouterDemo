//
//  CTMediator+ModuleBActions.h
//  CXRouterDemo
//
//  Created by Xu Chen on 2019/7/5.
//  Copyright © 2019 xu.yzl. All rights reserved.
//

#import <CTMediator/CTMediator.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (ModuleBActions)
// 外部调用的方法
- (UIViewController *)cx_mediator_viewControllerForBWithParams:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
