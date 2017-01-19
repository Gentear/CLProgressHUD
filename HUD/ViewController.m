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
}
- (IBAction)butonClick:(UIButton *)sender {
//    [[CLProgressHUD shareInstance] shows];
    CLProgressLabel *progressLabel = [CLProgressLabel progressLabel];
    progressLabel.remindLabel = @"开始翻译";
    progressLabel.remindLabelHight = 100;
//    progressLabel.remindLabel = @"123";
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(finishWithHUD) userInfo:nil repeats:NO];
}
- (void)finishWithHUD{
    [[CLProgressHUD shareInstance] dismiss];
}
- (void)injected{
    [self viewDidLoad];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
