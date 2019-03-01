//
//  Person.m
//  02.富文本测试
//
//  Created by 信息科技部 on 2019/3/1.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "Person.h"
@interface Person (){
    
    NSString *_name;
}

@property (nonatomic,copy)NSString *name;
- (void)setName:(NSString *)name;
- (NSString *)name;
@end
/**
 如果重写了变量的getter和setter方法，则在本类中@property默认生成的@synthesize不会起作用，意味着不会自动生成实例变量，所以需要我们手动声明。
 */
@implementation Person

- (void)setName:(NSString *)name{
    
    if (_name != name) {
        _name = name;
    }
}

- (NSString *)name{
    
    return _name;
}
@end
