//
//  SigninView.m
//  弹出视图
//
//  Created by qishang on 16/1/27.
//  Copyright © 2016年 Rocky. All rights reserved.
//

#import "SigninView.h"

@implementation SigninView

+ (instancetype )signView {

    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}

- (void)showInView:(UIView *)view {

    [view addSubview:self];
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.4 initialSpringVelocity:0.8 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        _contentView.transform = CGAffineTransformMakeScale(1.0, 1.0);
    } completion:^(BOOL finished) {
        
    }];

}

- (void)dismiss {

    [UIView animateWithDuration:0.5 animations:^{
        
        _contentView.transform = CGAffineTransformMakeScale(10.0, 10.0);
        _contentView.alpha = 0.0;
    } completion:^(BOOL finished) {
        
        [self removeFromSuperview];
    }];
    
}

- (void)awakeFromNib {

    self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
    self.frame = [UIScreen mainScreen].bounds;
   _contentView.transform = CGAffineTransformMakeScale(0, 0)
    ;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self dismiss];
}
@end
