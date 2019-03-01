//
//  Person.m
//  02.富文本测试
//
//  Created by 信息科技部 on 2019/2/28.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "Person.h"
@interface Person()

@property (nonatomic,strong)NSString *firstName;
@end
@implementation Person

@dynamic firstName;

//- (NSString *)firstName{
//
//    return _firstName;
//}



//- (void)setFirstName:(NSString *)firstName{
//
//    if (_firstName == nil) {
//
//        _firstName = firstName;
//    }else{
//
//        _firstName = @"Lee";
//    }
//    return _firstName;
//}
@end
