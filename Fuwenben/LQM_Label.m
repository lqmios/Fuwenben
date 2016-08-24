//
//  LQM_Label.m
//  Fuwenben
//
//  Created by lqm on 16/8/23.
//  Copyright © 2016年 LQM. All rights reserved.
//

#import "LQM_Label.h"

@implementation LQM_Label

-(void)labelAlightLeftAndRight
{
    [self labelAlightLeftAndRightWithWidth:self.frame.size.width];
}

-(void)labelAlightLeftAndRightWithWidth:(CGFloat)labelWidth
{
    //自适应高度
    CGSize textSize = [self.text boundingRectWithSize:CGSizeMake(labelWidth, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingTruncatesLastVisibleLine| NSStringDrawingUsesFontLeading  attributes:@{NSFontAttributeName :self.font} context:nil].size;
    CGFloat margin = (labelWidth - textSize.width)/(self.text.length - 1);
    NSNumber *number = [NSNumber numberWithFloat:margin];
    NSMutableAttributedString *attribute = [[NSMutableAttributedString alloc]initWithString:self.text];
    //字间距 :NSKernAttributeName
    [attribute addAttribute:NSKernAttributeName value:number range:NSMakeRange(0, self.text.length - 1)];
    self.attributedText = attribute;
    
}


@end



































