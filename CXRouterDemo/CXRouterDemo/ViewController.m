//
//  ViewController.m
//  CXRouterDemo
//
//  Created by Xu Chen on 2019/7/5.
//  Copyright © 2019 xu.yzl. All rights reserved.
//

#import "ViewController.h"
#import "CTMediator+ModuleBActions.h"
#import <MGJRouter/MGJRouter.h>

#import "ProtocolMediator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


+(void)load{
    [[ProtocolMediator sharedInstance] registerProtocol:@protocol(A_VC_Protocol) forClass:[self class]];
}

- (void)action_A:(NSString *)para1 {
    NSLog(@"A协议中的方法 - %@",para1);
}



- (IBAction)mg_bAction:(id)sender {
}

- (IBAction)mg_cAction:(id)sender {
//    [MGJRouter openURL:@"CDT://home/pageC"
//          withUserInfo:@{@"fatherVC" : self,
//                         }
//            completion:nil];
    
//    [MGJRouter openURL:@"CDT://home/pageC/666"
//          withUserInfo:@{@"fatherVC" : self,
//                         }
//            completion:nil];
    
    
    // 获取对象
//    UIView *searchTopBar = [MGJRouter objectForURL:@"cdt://search_top_bar"];
//    [self.view addSubview:searchTopBar];
    
    
    /// block点击回调
    [MGJRouter openURL:@"cdt://Test3/PushMainVC"
          withUserInfo:@{@"fatherVC" : self,
                         @"block":^(NSString * text){
        NSLog(@"%@",text);
    },
                         }
            completion:nil];
    
}

- (IBAction)ct_bAction:(id)sender {
    UIViewController *vc = [[CTMediator sharedInstance] cx_mediator_viewControllerForBWithParams:@{@"id": @"1101"}];
    [self presentViewController:vc animated:YES completion:nil];
}
- (IBAction)ct_cAction:(id)sender {
}



- (IBAction)pro_bAction:(id)sender {
    Class cls = [[ProtocolMediator sharedInstance] classForProtocol:@protocol(B_VC_Protocol)];
    UIViewController<B_VC_Protocol> *B_VC = [[cls alloc] init];
    [B_VC action_B:@"param1" para2:222 para3:333 para4:444];

    [self presentViewController:B_VC animated:YES completion:nil];
}


- (IBAction)pro_cAction:(id)sender {
    
}


@end
