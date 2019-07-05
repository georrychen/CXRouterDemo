
// 2. 中间件提供模块的注册和获取模块的功能，如：

#import <Foundation/Foundation.h>

@interface ProtocolMediator : NSObject

+ (instancetype)sharedInstance;

- (void)registerProtocol:(Protocol *)proto forClass:(Class)cls;

- (Class)classForProtocol:(Protocol *)proto;

@end
