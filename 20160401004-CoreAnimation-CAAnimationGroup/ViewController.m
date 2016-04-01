//
//  ViewController.m
//  20160401004-CoreAnimation-CAAnimationGroup
//
//  Created by Rainer on 16/4/1.
//  Copyright © 2016年 Rainer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *redView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // 1.创建一个动画组
    CAAnimationGroup *animationGroup = [CAAnimationGroup animation];
    
    // 2.设置动画组中的动画
    // 2.1.缩放动画
    CABasicAnimation *scaleAnimation = [CABasicAnimation animation];
    
    scaleAnimation.keyPath = @"transform.scale";
    scaleAnimation.toValue = @0.5;
    
    // 2.2.旋转动画
    CABasicAnimation *rotationAnimation = [CABasicAnimation animation];
    
    rotationAnimation.keyPath = @"transform.rotation";
    rotationAnimation.toValue = @(arc4random_uniform(M_PI));
    
    // 2.3.位移动画
    CABasicAnimation *positionAnimation = [CABasicAnimation animation];
    
    positionAnimation.keyPath = @"position";
    positionAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(160, 500)];
    
    // 2.4.将动画添加到动画组中
    animationGroup.animations = @[scaleAnimation, rotationAnimation, positionAnimation];
    
    // 3.将动画组添加到视图的layer层
    [self.redView.layer addAnimation:animationGroup forKey:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
