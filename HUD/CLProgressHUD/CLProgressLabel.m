//
//  CLProgressLabel.m
//  HUD
//
//  Created by zyyt on 16/1/13.
//  Copyright © 2016年 zyyt. All rights reserved.
//
#define CLScreenWidth [UIScreen mainScreen].bounds.size.width
#define CLScreenHeight [UIScreen mainScreen].bounds.size.height
#define CLScreenBounds [UIScreen mainScreen].bounds
#define CLFont 15
#import "CLProgressLabel.h"

@interface CLProgressLabel()

@property (weak,nonatomic)UILabel *clLabel;

@end

@implementation CLProgressLabel

+ (id)progressLabel{
    return [[self alloc]init];
}
- (instancetype)init{
    if (self = [super init]) {
        
        
    }
    return self;
}
- (void)setRemindLabel:(NSString *)remindLabel{
    
//    _remindLabel = remindLabel;
    self.clLabel.text = remindLabel;
    self.clLabel.bounds = [self getLabelSize:remindLabel];
    self.clLabel.numberOfLines = 0;
    [self.clLabel sizeToFit];
    self.clLabel.bounds = CGRectMake(0, 0, self.clLabel.bounds.size.width+16, self.clLabel.bounds.size.height+8);
    [UIView animateWithDuration:1 delay:1 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.clLabel.alpha = 0;
    } completion:^(BOOL finished) {
        [self.clLabel removeFromSuperview];
    }];
}
- (CGRect)getLabelSize:(NSString *)remindLabel{

    CGFloat titleW = 0;
    CGFloat titleH = 0;
    CGSize size = CGSizeMake(titleW, 21);
    NSDictionary * attributes = @{NSFontAttributeName:[UIFont systemFontOfSize:CLFont]};
    size = [remindLabel boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil].size;
    if (size.width >= CLScreenWidth*2.0/3) {
        
        CGSize newSize = CGSizeMake(CLScreenWidth*2.0/3, titleH);
        NSDictionary * attributes = @{NSFontAttributeName:[UIFont systemFontOfSize:CLFont]};
        size = [remindLabel boundingRectWithSize:newSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil].size;
    }

    return CGRectMake(0, 0, size.width, size.height);
}
- (UILabel *)clLabel{
    if (_clLabel == nil) {
        
        UILabel *clLabel = [[UILabel alloc]init];
        clLabel.center = CGPointMake(CLScreenWidth/2, CLScreenHeight - 150);
        clLabel.textColor = [UIColor whiteColor];
        clLabel.backgroundColor = [UIColor colorWithWhite:0.000 alpha:0.510];
        clLabel.font = [UIFont systemFontOfSize:CLFont];
        clLabel.layer.cornerRadius = 5;
        clLabel.clipsToBounds = YES;
        clLabel.textAlignment = NSTextAlignmentCenter;
        UIWindow * currentWindow = [UIApplication sharedApplication].keyWindow;
        [currentWindow addSubview:clLabel];
        _clLabel = clLabel;
    }
    return  _clLabel;
}
@end
