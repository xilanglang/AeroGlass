//
//  blurSlider.m
//  Horrible_FM
//
//  Created by llbt on 16/3/24.
//  Copyright © 2016年 YWKJ. All rights reserved.
//

#import "blurSlider.h"

@implementation blurSlider


- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value
{
    //y轴方向改变手势范围
    rect.origin.y = rect.origin.y - 10;
    rect.size.height = rect.size.height + 20;
    return CGRectInset ([super thumbRectForBounds:bounds trackRect:rect value:value], 10 ,10);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
