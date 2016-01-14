//
//  CLProgressLabel.h
//  HUD
//
//  Created by zyyt on 16/1/13.
//  Copyright © 2016年 zyyt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CLProgressLabel : UIView



@property (strong,nonatomic) NSString *remindLabel;

/**
 *  距离底部的高默认为80
 */
@property (assign,nonatomic)CGFloat remindLabelHight;
+ (id)progressLabel;

@end
