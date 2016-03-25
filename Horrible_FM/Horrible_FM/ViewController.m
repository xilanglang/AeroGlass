//
//  ViewController.m
//  Horrible_FM
//
//  Created by llbt on 16/3/24.
//  Copyright © 2016年 YWKJ. All rights reserved.
//

#import "ViewController.h"
#import "FXBlurView.h"
#import "blurSlider.h"

@interface ViewController (){
    FXBlurView * blurView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor whiteColor];
    UIImageView * backGround = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height*2/3)];
    backGround.image = [UIImage imageNamed:@"topView.jpg"];
    [self.view addSubview:backGround];
    blurView = [[FXBlurView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height*2/3)];
    blurView.dynamic = YES;
    blurView.blurRadius = 10.0f;
    blurView.tintColor = [UIColor clearColor];
    [backGround addSubview:blurView];
    
    blurSlider * slider = [[blurSlider alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width/4, 10)];
    slider.maximumValue = 20;
    slider.center = CGPointMake(self.view.frame.size.width/2, blurView.frame.size.height+30);
    slider.minimumValue = 0;
    slider.value = 20;
    [slider addTarget:self action:@selector(changedBlurValue:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:slider];
}
-(void)changedBlurValue:(UISlider *)slider{
    if (slider.value == 0) {
        blurView.hidden = YES;
    }else{
        blurView.hidden = NO;
    }
    blurView.blurRadius = slider.value;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
