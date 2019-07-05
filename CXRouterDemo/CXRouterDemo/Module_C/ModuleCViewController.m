//
//  ModuleCViewController.m
//  CXRouterDemo
//
//  Created by Xu Chen on 2019/7/5.
//  Copyright © 2019 xu.yzl. All rights reserved.
//

#import "ModuleCViewController.h"
#import <MGJRouter/MGJRouter.h>

@interface ModuleCViewController ()

@end

@implementation ModuleCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.purpleColor;
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
   
    if (self.clicked){
        self.clicked(@"C页面点击回调的");
    }
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

// 在load方法中自动注册，在主工程中不用写任何代码。
+ (void)load {
//    [MGJRouter registerURLPattern:@"CDT://home/pageC" toHandler:^(NSDictionary *routerParameters) {
//        NSLog(@"C页面接受参数 - %@",routerParameters);
//        UIViewController *fatherVC = routerParameters[MGJRouterParameterUserInfo][@"fatherVC"];
//        ModuleCViewController *vc = [[ModuleCViewController alloc] init];
//        [fatherVC presentViewController:vc animated:YES completion:nil];
//    }];
    
    [MGJRouter registerURLPattern:@"cdt://home/pageC/:id" toHandler:^(NSDictionary *routerParameters) {
        NSLog(@"C页面接受参数 - %@",routerParameters);
        UIViewController *fatherVC = routerParameters[MGJRouterParameterUserInfo][@"fatherVC"];
        ModuleCViewController *vc = [[ModuleCViewController alloc] init];
        [fatherVC presentViewController:vc animated:YES completion:nil];
    }];
    
    // 返回一个 view 对象
    [MGJRouter registerURLPattern:@"cdt://search_top_bar" toObjectHandler:^id(NSDictionary *routerParameters) {
        UIView *searchTopBar = [[UIView alloc] init];
        searchTopBar.frame = CGRectMake(0, 299, 100, 100);
        searchTopBar.backgroundColor= UIColor.greenColor;
        return searchTopBar;
    }];
    
    // block 回调
    [MGJRouter registerURLPattern:@"cdt://Test3/PushMainVC" toHandler:^(NSDictionary *routerParameters) {
        UIViewController *fatherVC = routerParameters[MGJRouterParameterUserInfo][@"fatherVC"];
        void(^block)(NSString *) = routerParameters[MGJRouterParameterUserInfo][@"block"];
        ModuleCViewController *vc = [[ModuleCViewController alloc] init];
        vc.clicked = block;
        [fatherVC presentViewController:vc animated:YES completion:nil];
    }];
}


@end
