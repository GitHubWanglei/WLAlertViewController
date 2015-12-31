//
//  ViewController.m
//  alertView
//
//  Created by lihongfeng on 15/11/11.
//  Copyright © 2015年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "WLAlertViewController.h"

@interface ViewController ()<WLAlertViewControllerDelegate, UIAlertViewDelegate>

- (IBAction)btn:(id)sender;

@property (nonatomic, strong) WLAlertViewController *alertView;
@property (nonatomic, strong) UIAlertController *alertController;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)btn:(id)sender {
    
    WLAlertViewController *alertv=[WLAlertViewController alertWithTitle:@"提示消息" message:@"登陆失败" delegate:self cancelButtonTitle:@"确定" preferredStyle:WLAlertControllerStyleAlert];
    [alertv addOtherButtonWithTitle:@"返回" style:WLAlertActionStyleDefault];
    [alertv show];

}

#pragma mark - XFTAlertViewController delegate
-(void)WLAlertView:(WLAlertViewController *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    // Button index
    NSLog(@"------index------%lu------", (long)buttonIndex);
    
    //输入框内容
    for (UITextField *textField in alertView.textFields) {
        NSLog(@"~~~~~~~~~%@~~~~~~~~~~~", textField.text);
    }
    
}

@end














