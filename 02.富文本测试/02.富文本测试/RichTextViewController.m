//
//  RichTextViewController.m
//  02.富文本测试
//
//  Created by 信息科技部 on 2019/2/22.
//  Copyright © 2019 信息科技部. All rights reserved.
//

#import "RichTextViewController.h"

@interface RichTextViewController ()

@end


//label.lineBreakMode = NSLineBreakByCharWrapping;以字符为显示单位显示，后面部分省略不显示。
//label.lineBreakMode = NSLineBreakByClipping;剪切与文本宽度相同的内容长度，后半部分被删除。
//label.lineBreakMode = NSLineBreakByTruncatingHead;前面部分文字以……方式省略，显示尾部文字内容。
//label.lineBreakMode = NSLineBreakByTruncatingMiddle;中间的内容以……方式省略，显示头尾的文字内容。
//label.lineBreakMode = NSLineBreakByTruncatingTail;结尾部分的内容以……方式省略，显示头的文字内容。
//label.lineBreakMode = NSLineBreakByWordWrapping;以单词为显示单位显示，后面部分省略不显示。
@implementation RichTextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1.sizeToFit
    self.navigationItem.title = @"富文本测试";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *testLb = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 200, 20)];
    testLb.numberOfLines = 0;
//    testLb.text = @"测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试";
    [self.view addSubview:testLb];
//    [testLb sizeToFit];
    
    // 2.NSMutableAttributedString
    NSString *str = @"人生若只如初见，何事秋风悲画扇。\n等闲变却故人心，却道故人心易变。\n骊山语罢清宵半，泪雨霖铃终不怨。\n何如薄幸锦衣郎，比翼连枝当日愿。";
    NSMutableAttributedString *attrStr = [[NSMutableAttributedString alloc]initWithString:str];
    // 设置字体和字体的范围
    [attrStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:30.f] range:NSMakeRange(0, 3)];
    // 设置文字颜色
    [attrStr addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(17, 7)];
    // 添加下划线
    [attrStr addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInt:NSUnderlineStyleSingle] range:NSMakeRange(8, 7)];
    
    
    // 段落样式
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc]init];
    // 行间距
    paragraph.lineSpacing = 10;
    // 段落间距
    paragraph.paragraphSpacing = 20;
    // 对齐方式
    paragraph.alignment = NSTextAlignmentLeft;
    // 制定段落开始的锁进像素
    paragraph.firstLineHeadIndent = 30;
    // 调整全部文字的锁进像素
    paragraph.headIndent = 10;
    
    // 添加段落设置
    [attrStr addAttribute:NSParagraphStyleAttributeName value:paragraph range:NSMakeRange(0, [str length])];
    NSString *urlStr = @"www.baidu.com";
    NSURL *url = [NSURL URLWithString:urlStr];
    testLb.attributedText = attrStr;
    [testLb sizeToFit];
    // label添加链接
    
    
}

@end
