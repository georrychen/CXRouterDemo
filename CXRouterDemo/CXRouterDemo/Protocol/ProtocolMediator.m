#import "ProtocolMediator.h"

@interface ProtocolMediator()
@property (nonatomic,strong) NSMutableDictionary *protocolCache;

@end
@implementation ProtocolMediator


+ (instancetype)sharedInstance
{
    static ProtocolMediator *mediator;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mediator = [[ProtocolMediator alloc] init];
    });
    return mediator;
}

-(NSMutableDictionary *)protocolCache{
    if (!_protocolCache) {
        _protocolCache = [NSMutableDictionary new];
    }
    return _protocolCache;
}

- (void)registerProtocol:(Protocol *)proto forClass:(Class)cls {
    [self.protocolCache setObject:cls forKey:NSStringFromProtocol(proto)];
}

- (Class)classForProtocol:(Protocol *)proto {
    return self.protocolCache[NSStringFromProtocol(proto)];
}


@end
