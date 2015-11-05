//
//  ViewController.m
//  UWCrashCollection
//
//  Created by 王智超 on 15/11/5.
//  Copyright © 2015年 UWFengur. All rights reserved.
//

//获取设备的物理高度
#define ScreenHeight [UIScreen mainScreen].bounds.size.height
//获取设备的物理宽度
#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    self.view.backgroundColor = [UIColor brownColor];
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, 40)];
    btn.backgroundColor = self.view.backgroundColor;
    btn.center = self.view.center;
    [btn setTitle:@"点击这里会崩溃" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(crash) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
