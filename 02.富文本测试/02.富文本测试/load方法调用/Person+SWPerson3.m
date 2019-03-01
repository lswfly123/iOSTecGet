//
//  Person+SWPerson3.m
//  02.富文本测试
//
//  Created by 信息科技部 on 2019/3/1.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "Person+SWPerson3.h"

@implementation Person (SWPerson3)

+ (void)load{
    
    NSLog(@"-----加载的当前类为分类3:%@------",NSStringFromClass([self class]));
}
@end
