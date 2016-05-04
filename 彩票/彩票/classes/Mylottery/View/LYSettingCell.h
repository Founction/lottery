//
//  LYSettingCell.h
//  彩票
//
//  Created by 李胜营 on 16/5/1.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LYSettingItem;
@interface LYSettingCell : UITableViewCell
/* model Array */
@property (strong, nonatomic) LYSettingItem * item;
+ (LYSettingCell *)settingCell:(UITableView *)tableView withStyle:(UITableViewCellStyle)stytle;

@end
