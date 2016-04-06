//
//  UIView+TransformScale.m
//  GiftBox
//
//  Created by 康健 on 16/4/6.
//  Copyright © 2016年 xinyihezi. All rights reserved.
//
#import <objc/runtime.h>
#import "UIView+TransformScale.h"
@implementation UIView(TransformScale)
- (void)show {
    CAKeyframeAnimation* animation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    animation.duration = 0.375f;
    
    NSMutableArray *values = [NSMutableArray array];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.1, 0.1, 1.0)]];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(1.1, 1.1, 1.0)]];
    [values addObject:[NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.0, 1.0)]];
    animation.values = values;
    [self.layer addAnimation:animation forKey:nil];
}
- (void)hide {
    [self hide:nil];
}
- (void)hide:(void (^)())completion {
    [UIView animateWithDuration:0.2 animations:^{
        self.transform = CGAffineTransformMakeScale(0.01, 0.01);
        self.alpha = 0.f;
    } completion:^(BOOL finished) {
        if (completion) {
            completion();
        }
    }];
}
@end
