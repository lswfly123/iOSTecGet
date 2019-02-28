//
//  NSString+EOCMyAdditions.m
//  02.富文本测试
//
//  Created by 信息科技部 on 2019/2/28.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "NSString+EOCMyAdditions.h"
#import <objc/runtime.h>

@implementation NSString (EOCMyAdditions)

+ (void)load{
    
    Method originalMethod = class_getInstanceMethod([NSString class],@selector(lowercaseString));
    Method swappedMethod = class_getInstanceMethod([NSString class],@selector(eoc_myLowercaseString));
    method_exchangeImplementations(originalMethod, swappedMethod);
    
    NSString *string = @"BOCCfc .com .cn";
    NSString *lowerCaseString = [string lowercaseString];
}

// 每次调用的时候增加打印记录功能
- (NSString *)eoc_myLowercaseString{
    
    NSString *lowercase = [self eoc_myLowercaseString];
    NSLog(@"%@------->%@",self,lowercase);
    return lowercase;
}
@end
