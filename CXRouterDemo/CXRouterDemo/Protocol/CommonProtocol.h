//
//  CommonProtocol.h
//  CXRouterDemo
//
//  Created by Xu Chen on 2019/7/5.
//  Copyright © 2019 xu.yzl. All rights reserved.
//

// https://www.jianshu.com/p/bffce02d60a1
// 1. 将各个模块提供的协议统一放在一个文件中（CommonProtocol.h），在各个模块中依赖这个文件，实现其协议。如：

#import <Foundation/Foundation.h>

@protocol A_VC_Protocol <NSObject>
-(void)action_A:(NSString*)para1;
@end



@protocol B_VC_Protocol <NSObject>
-(void)action_B:(NSString*)para para2:(NSInteger)para2 para3:(NSInteger)para3 para4:(NSInteger)para4;
@end
