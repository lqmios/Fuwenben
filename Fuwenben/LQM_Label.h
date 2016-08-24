//
//  LQM_Label.h
//  Fuwenben
//
//  Created by lqm on 16/8/23.
//  Copyright © 2016年 LQM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LQM_Label : UILabel
// 实现iOS 左右两端对齐（NSTextAlignmentJustified是最后一行自然对齐）
- (void)labelAlightLeftAndRight;


 // 指定Label的width

- (void)labelAlightLeftAndRightWithWidth:(CGFloat)labelWidth;



@end
