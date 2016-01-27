//
//  SigninView.h
//  弹出视图
//
//  Created by qishang on 16/1/27.
//  Copyright © 2016年 Rocky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SigninView : UIView
@property (strong, nonatomic) IBOutlet UIView *contentView;

+ (instancetype)signView;
- (void)showInView:(UIView *)view;
@end
