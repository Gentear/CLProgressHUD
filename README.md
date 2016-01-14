

导入头文件
#import "CLProgress.h"


使用方法:

进度指示


//展示

[[CLProgressHUD shareInstance] shows];



//隐藏

[[CLProgressHUD shareInstance] dismiss];


//文字提示


CLProgressLabel *progressLabel = [CLProgressLabel progressLabel];

//输入提醒文本

progressLabel.remindLabel = @"请重新输入";


//提醒文本距离底部的高度不设置默认为80

progressLabel.remindLabelHight = 100;
