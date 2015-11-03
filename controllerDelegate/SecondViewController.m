//
//  SecondViewController.m
//  controllerDelegate
//
//  Created by 叶永长 on 11/3/15.
//  Copyright © 2015 YYC. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
{
    UITextField *nameField;
}
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 40, 20);
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitle:@"确定" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc]initWithCustomView:button];
    self.navigationItem.rightBarButtonItem = rightItem;
    
    
    
    nameField = [[UITextField alloc]initWithFrame:CGRectMake(50, 100, 300, 20)];
    nameField.placeholder = @"输入想要传给前面页面的值";
    nameField.borderStyle = UITextBorderStyleRoundedRect;
    nameField.textColor = [UIColor redColor];
    [self.view addSubview:nameField];
}
-(void)btnClick:(UIButton *)sender{
    if (self.delegate &&[self.delegate respondsToSelector:@selector(passValue:)]) {
        [self.delegate passValue:nameField.text];
    }
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
