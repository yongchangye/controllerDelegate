//
//  ViewController.m
//  controllerDelegate
//
//  Created by 叶永长 on 11/3/15.
//  Copyright © 2015 YYC. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()<PassValueDelegate>
{
    UILabel *ShowLabel;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 40, 20)];
    [button setTitle:@"跳转" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightitem = [[UIBarButtonItem alloc]initWithCustomView:button];
    self.navigationItem.rightBarButtonItem = rightitem;
    
    
    ShowLabel= [[UILabel alloc]initWithFrame:CGRectMake(50, 100, 300, 20)];
    ShowLabel.text = @"显示第二个页面传过来的值";
    ShowLabel.textColor = [UIColor blackColor];
    ShowLabel.layer.borderWidth = 0.5;
    [self.view addSubview:ShowLabel];
    
    
    
}
-(void)btnClick:(UIButton *)sender{
    SecondViewController *second = [[SecondViewController alloc]init];
    second.delegate = self;
    [self.navigationController pushViewController:second animated:YES];
}

-(void)passValue:(NSString *)str{
    ShowLabel.text = str;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
