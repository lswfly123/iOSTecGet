//
//  Person+SWPerson2.m
//  02.富文本测试
//
//  Created by 信息科技部 on 2019/3/1.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "Person+SWPerson2.h"

@implementation Person (SWPerson2)

+ (void)load{
    
    NSLog(@"-----加载的当前类为分类2:%@------",NSStringFromClass([self class]));
}
@end
