//
//  TsyIndexViewController.m
//  Tsy
//
//  Created by LV-Mac on 16/7/6.
//  Copyright © 2016年 LV-Mac. All rights reserved.
//

#import "TsyIndexViewController.h"
#import "UIColor+Hex.h"
#import "TsyVideoViewController.h"

@interface TsyIndexViewController ()

@end

@implementation TsyIndexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 初始化页面
    [self initView];
}

// 初始化页面
- (void)initView {
    // 隐藏导航栏
    [self.navigationController setNavigationBarHidden:YES];
    
    // 跳转按钮
    UIButton *nextBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    // 属性
    [nextBtn setTitle:@"下一页" forState:UIControlStateNormal];
    nextBtn.titleLabel.textColor = [UIColor whiteColor];
    nextBtn.backgroundColor = [UIColor colorWithHexString:@"#66c036"];
    
    // 位置
    nextBtn.center = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2);
    [nextBtn sizeToFit];
    
    // 事件
    [nextBtn addTarget:self action:@selector(nextClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:nextBtn];
}

// 下一页
- (IBAction)nextClick:(id)sender {
    TsyVideoViewController *videoView = [[TsyVideoViewController alloc] init];
    
    [self.navigationController pushViewController:videoView animated:YES];
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
