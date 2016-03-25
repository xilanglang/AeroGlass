//
//  blurSlider.h
//  Horrible_FM
//
//  Created by llbt on 16/3/24.
//  Copyright © 2016年 YWKJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface blurSlider : UISlider

- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value;


@end
