//
//  ViewController.m
//  HUD
//
//  Created by zyyt on 16/1/13.
//  Copyright © 2016年 zyyt. All rights reserved.
//
#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height
#define ScreenBounds [UIScreen mainScreen].bounds
#define BarHeight 20
#define NVHeight 44
#define TBHeight 44

#define BackgroundColor [UIColor colorWithRed:226.0/255.0 green:226.0/255.0 blue:226.0/255.0 alpha:1]
#import "ViewController.h"

#import "CLProgress.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.view.backgroundColor = [UIColor yellowColor];
//    UIImageView *image = [[UIImageView alloc]initWithFrame:ScreenBounds];
//    image.image = [UIImage imageNamed:@"1"];
//    [self.view addSubview:image];
//    CLProgressHUD *HUD = [CLProgressHUD ProgressHUD];
//    [self.view addSubview:HUD];
}
- (IBAction)butonClick:(UIButton *)sender {
    sender.selected =!sender.selected;
    if (sender.selected) {
        [[CLProgressHUD shareInstance] shows];

    }else{
        [[CLProgressHUD shareInstance] dismiss];

    }
    CLProgressLabel *progressLabel = [CLProgressLabel progressLabel];
    progressLabel.remindLabel = @"请重新输入";
    progressLabel.remindLabelHight = 100;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
