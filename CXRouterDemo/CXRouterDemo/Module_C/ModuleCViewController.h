//
//  ModuleCViewController.h
//  CXRouterDemo
//
//  Created by Xu Chen on 2019/7/5.
//  Copyright © 2019 xu.yzl. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef  void(^btnClickBlock)(NSString *);


@interface ModuleCViewController : UIViewController
@property (nonatomic, copy)btnClickBlock clicked;

@end

NS_ASSUME_NONNULL_END
