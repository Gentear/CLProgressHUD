使用方法

导入头文件
#import "CLProgress.h"


使用方法:

进度指示
展示
[[CLProgressHUD shareInstance] shows];

隐藏
[[CLProgressHUD shareInstance] dismiss];


文字提示
CLProgressLabel *progressLabel = [CLProgressLabel progressLabel];
progressLabel.remindLabel = @"请重新输入";
