//
//  ViewController.m
//  Fuwenben
//
//  Created by lqm on 16/8/23.
//  Copyright © 2016年 LQM. All rights reserved.
//fdfsf

#import "ViewController.h"
#import "LQM_Label.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *str = @"价格:$50";
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2 - 150, 20,300, 30)];
    //添加富文本属性
    NSMutableAttributedString *arrString = [[NSMutableAttributedString alloc]initWithString:str];
    //设置颜色
    [arrString addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(3, 3)];
    //字体大小
    [arrString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:30] range:NSMakeRange(3, 3)];
     NSRange range = NSMakeRange(0, arrString.length);
    //删除线
    [arrString addAttribute:NSStrikethroughStyleAttributeName value:@(1) range:range];
    [arrString addAttribute:NSStrikethroughColorAttributeName value:[UIColor greenColor] range:range];
    
//    label.text = str;
    label.attributedText = arrString;
    [self.view addSubview:label];
    
#pragma mark ---实现两段对齐-
    
    LQM_Label *lqmLabel1 = [[LQM_Label alloc]initWithFrame:CGRectMake(20, 100, 300, 30)];//300 label的宽度
     [self.view addSubview:lqmLabel1];
    lqmLabel1.text = @"我是两端对齐";
    [lqmLabel1 labelAlightLeftAndRightWithWidth:250];//250 对齐label的宽度
    
    LQM_Label *lqmLabel2 = [[LQM_Label alloc]initWithFrame:CGRectMake(20, 150, 300, 30)];
    [self.view addSubview:lqmLabel2];
    lqmLabel2.text = @"我是两端对齐,我是两端对齐";
    [lqmLabel2 labelAlightLeftAndRightWithWidth:250];
    
    
#pragma mark ---相关属性-
    /*//NSFontAttributeName   字号 UIFont 默认12
     //NSParagraphStyleAttributeName    段落样式  NSParagraphStyle
     //NSForegroundColorAttributeName    前景色   UIColor
     //NSBackgroundColorAttributeName    背景色   UIColor
     //NSObliquenessAttributeName        字体倾斜     NSNumber
     //NSExpansionAttributeName          字体加粗     NSNumber  比例 0就是不变 1增加一倍
     //NSKernAttributeName               字间距   CGFloat
     //NSUnderlineStyleAttributeName     下划线     1或0
     //NSUnderlineColorAttributeName     下划线颜色
     //NSStrikethroughStyleAttributeName 删除线   1或0
     //NSStrikethroughColorAttributeName 某种颜色
     //NSStrokeColorAttributeName        same as ForegroundColor
     //NSStrokeWidthAttributeName        CGFloat
     //NSLigatureAttributeName           连笔字  1或0  没看出效果
     //NSShadowAttributeName             阴影    NSShawdow
     //NSTextEffectAttributeName          设置文本特殊效果，取值为 NSString 对象，目前只有图版印刷效果可用：
     //NSAttachmentAttributeName         NSTextAttachment  设置文本附件,常用插入图片
     //NSLinkAttributeName               链接  NSURL (preferred) or NSString
     //NSBaselineOffsetAttributeName     基准线偏移   NSNumber
     
     //NSWritingDirectionAttributeName   文字方向     @[@(1),@(2)]  分别代表不同的文字出现方向等等，我想你一定用不到它 - -
     //NSVerticalGlyphFormAttributeName  水平或者竖直文本  1竖直 0水平 在iOS没卵用，不支持竖版
*/

    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






























@end
