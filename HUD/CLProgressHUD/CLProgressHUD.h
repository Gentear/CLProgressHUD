//
//  CLProgressHUD.h
//  HUD
//
//  Created by zyyt on 16/1/13.
//  Copyright © 2016年 zyyt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CLProgressHUD : UIView

+ (id)shareInstance;
- (void)shows;
- (void)dismiss;
@end
