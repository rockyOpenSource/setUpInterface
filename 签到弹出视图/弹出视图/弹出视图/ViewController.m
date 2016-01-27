//
//  ViewController.m
//  弹出视图
//
//  Created by qishang on 16/1/27.
//  Copyright © 2016年 Rocky. All rights reserved.
//

#import "ViewController.h"
#import "SigninView.h"
@interface ViewController ()

@end

@implementation ViewController

- (IBAction)registration:(id)sender {
    
    SigninView*signView = [SigninView signView];
    [signView showInView:self.view];

    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
