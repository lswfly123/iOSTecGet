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


/**
 关于父类、子类、分类中load方法的调用顺序问题:
    1.父类>子类>分类(分类的加载顺序与编译顺序有关)
 load方法的调用时机问题
    1.在main函数之前调用
 
 */
@implementation Person

+ (void)load{
    
    NSLog(@"-----加载的当前类为:%@------",NSStringFromClass([self class]));
}

- (void)setName:(NSString *)name{
    
    if (_name != name) {
        _name = name;
    }
}

- (NSString *)name{
    
    return _name;
}

#pragma mark  -- 是否在getter方法和setter方法的实现中使用self.来访问属性造成死循环
- (void)setAge:(int)age{
    
    if (self.age != age) {
       
        self.age = age;
    }
}

- (int)age{
    
    return self.age;
}
@end
