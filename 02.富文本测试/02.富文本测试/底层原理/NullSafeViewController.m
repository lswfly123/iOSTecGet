//
//  NullSafeViewController.m
//  02.富文本测试
//
//  Created by 信息科技部 on 2019/2/26.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "NullSafeViewController.h"
#import <objc/runtime.h>
#import <objc/message.h>
#import <Messages/Messages.h>
#import "SWDealTool.h"

#import "Person.h"
@interface NullSafeViewController ()

@end

@implementation NullSafeViewController
static NSArray *respondClasses;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [[UIButton alloc]init];
    btn.frame = CGRectMake(50, 100, 150, 50);
    btn.backgroundColor = [UIColor orangeColor];
    [btn setTitle:@"点我点我" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(temBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
//    Person *person = [[Person alloc]init];
//    objc_msgSend(person, @selector(eat));
    
//    objc_msgSend(objc_getClass("MJPerson"),sel_registerName("initialize"));
}

- (void)temBtnClick:(UIButton *)btn{
    
    Person *p = [[Person alloc]init];
    p.age = 15;
//    NSLog(@"小明的年龄是%d",p.age);
}

- (void)logInfo:(NSString *)info{
    
    NSLog(@"----%@------",info);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
//    Person *person = [[Person alloc]init];
//    person.firstName = @"Brian";
//    NSLog(@"我的名字是：%@",person.firstName);
}




#pragma mark -- 方案一:添加方法
//void click(id self,SEL _cmd,UIButton *btn){
//
//    NSLog(@"click方法被调用了");
//}
//
//
//+ (BOOL)resolveInstanceMethod:(SEL)sel{// 只能处理一个类中的方法
//
//    // 方法添加成功后被缓存起来，下次点击会直接调用添加的click方法
//    if (sel == @selector(temBtnClick:)) {
//
//        // v:无返回值
//        // @:object类型
//        // ::方法(SEL)
//        class_addMethod(self, sel, (IMP)click,"v@:@");
//        return YES;
//    }
//
//    return [super resolveInstanceMethod:sel];
//}
//
//#pragma mark -- 方法二：快速转发
//- (id)forwardingTargetForSelector:(SEL)aSelector{
//
//    return [[SWDealTool alloc]init];
//}


//#pragma mark -- 方法三:慢速转发路径
//- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
//
//    NSString *sel = NSStringFromSelector(aSelector);
//    if ([sel isEqualToString:@"temBtnClick:"]) {
//
//        NSMethodSignature *sig = [NSMethodSignature signatureWithObjCTypes:"v@:@"];
//        return sig;
//    }
//    return [super methodSignatureForSelector:aSelector];
//}
//
//- (void)forwardInvocation:(NSInvocation *)anInvocation{
//
//    SEL selector = [anInvocation selector];
//    SWDealTool *deal = [[SWDealTool alloc]init];
//    if ([deal respondsToSelector:selector]) {
//
//        [anInvocation invokeWithTarget:deal];
//    }
//}

//#pragma mark -- 消息转发全流程
//+ (BOOL)resolveClassMethod:(SEL)sel{
//
//    return NO;
//}
//
//- (Class)swResponsedClassForSelector:(SEL)selector{
//
//    respondClasses = @[
//                       [NSMutableArray class],
//                       [NSMutableDictionary class],
//                       [NSMutableString class],
//                       [NSNumber class],
//                       [NSDate class],
//                       [NSData class]
//                       ];
//    for (Class someClass in respondClasses) {
//
//        if ([someClass instanceMethodForSelector:selector]) {
//            return someClass;
//        }
//    }
//    return nil;
//}
//
//- (id)forwardingTargetForSelector:(SEL)aSelector{
//
//    id forwardTarget = [super forwardingTargetForSelector:aSelector];
//    if (forwardTarget) {
//        return forwardTarget;
//    }
//
//    Class someClass = [self swResponsedClassForSelector:aSelector];
//    if (someClass) {
//        forwardTarget = [someClass new];
//    }
//    return forwardTarget;
//}
@end
