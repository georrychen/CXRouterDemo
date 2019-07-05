//
//  ModuleBViewController.m
//  CXRouterDemo
//
//  Created by Xu Chen on 2019/7/5.
//  Copyright © 2019 xu.yzl. All rights reserved.
//

#import "ModuleBViewController.h"
#import "ProtocolMediator.h"

@interface ModuleBViewController ()

@end

@implementation ModuleBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.redColor;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}



// 3. 在各个模块中实现其协议
+(void)load{
    [[ProtocolMediator sharedInstance] registerProtocol:@protocol(B_VC_Protocol) forClass:[self class]];
}

- (void)action_B:(NSString *)para para2:(NSInteger)para2 para3:(NSInteger)para3 para4:(NSInteger)para4 {
    NSLog(@"B 协议的方法 - %@ - %ld - %ld",para,(long)para2,para3);
}


@end
