//
//  NSString+SWExtension.m
//  02.富文本测试
//
//  Created by 信息科技部 on 2019/2/22.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "NSString+SWExtension.h"

@implementation NSString (SWExtension)

+ (NSString *)empty {
    return @"";
}

+ (BOOL)strNilOrEmpty:(NSString *)string {
    
    if (string == nil || [string isEqualToString:@"(null)"] ||
        [string isEqualToString:@""] ||
        [string isEqualToString:@"<null>"]) {
        return YES;
    }
    return NO;
}

- (BOOL)isEmpty {
    if ([self isKindOfClass:[NSString class]] &&
        ![self isEqualToString:@"(null)"] &&
        ![self isEqualToString:@""] &&
        ![self isEqualToString:@"<null>"]) {
        return NO;
    }
    return YES;
}

- (NSString *)limitTextLength:(NSUInteger)length {
    
    if (self.length > length) {
        NSMutableString *mtbStr = [self mutableCopy];
        [mtbStr deleteCharactersInRange:NSMakeRange(mtbStr.length-1, 1)];
        return mtbStr.copy;
    }
    return self;
    
}
@end
