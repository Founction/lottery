//
//  LYSettingCell.m
//  彩票
//
//  Created by 李胜营 on 16/5/1.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYSettingCell.h"
#import "LYSettingItem.h"
#import "LYSwitchSettingItem.h"
#import "LYArrowSettingItem.h"
@interface LYSettingCell()
/* <#信息#> */
@property (strong, nonatomic) UIImageView * arrowView;
/* <#信息#> */
@property (strong, nonatomic) UISwitch* switchView;
@end

@implementation LYSettingCell
- (void)setItem:(LYSettingItem *)item
{
    _item = item;
    [self setUpData];
    [self setUpAccessoryView];

}
- (void)setUpData
{
    self.textLabel.text = self.item.title;
    self.detailTextLabel.text = self.item.subtitle;
    self.imageView.image = self.item.image;

}
- (void)setUpAccessoryView
{
    if ([_item isKindOfClass:[LYArrowSettingItem class]])
    {
        self.accessoryView = self.arrowView;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
    }else if ([_item isKindOfClass:[LYSwitchSettingItem class]])
    {
        self.accessoryView = self.switchView;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }else
    {
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
        self.accessoryView = nil;

    }

}
- (UIImageView *)arrowView
{
    if (_arrowView == nil)
    {
        _arrowView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arrow_right"]];
    }

    return _arrowView;
}
- (UISwitch *)switchView
{
    if (_switchView == nil)
    {
        _switchView= [[UISwitch alloc] init];
    }
    
    return _switchView;
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
+ (LYSettingCell *)settingCell:(UITableView *)tableView withStyle:(UITableViewCellStyle)stytle
{
   
    static NSString *ID = @"cell";
    LYSettingCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil)
    {
        cell = [[LYSettingCell alloc] initWithStyle:stytle reuseIdentifier:ID];
    }
    return cell;
}

@end
