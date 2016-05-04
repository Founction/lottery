//
//  LYBaseViewController.h
//  彩票
//
//  Created by 李胜营 on 16/5/1.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LYSettingGroup.h"
#import "LYSwitchSettingItem.h"
#import "LYArrowSettingItem.h"

@interface LYBaseViewController : UITableViewController
/* 模型数组 */
@property (strong, nonatomic) NSMutableArray * groups;
@end
