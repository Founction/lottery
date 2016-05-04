//
//  LYAwardViewController.m
//  彩票
//
//  Created by 李胜营 on 16/5/3.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYAwardViewController.h"
#import "LYSwitchSettingItem.h"
#import "LYArrowSettingItem.h"
#import "LYSettingGroup.h"
#import "LYSettingCell.h"

@interface LYAwardViewController ()

@end

@implementation LYAwardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpGroup];
}
- (void)setUpGroup
{
    LYSwitchSettingItem *switchItem = [LYSwitchSettingItem itemWithImage:nil title:@"双色球" subtitle:@"每周二、四、日开奖"];
    LYSwitchSettingItem *switchItem1 = [LYSwitchSettingItem itemWithImage:nil title:@"大乐透" subtitle:@"每周一、三、六开奖"];
    LYSwitchSettingItem *switchItem2 = [LYSwitchSettingItem itemWithImage:nil title:@"3D" subtitle:@"每天开奖、包括试机号提醒"];
    LYSwitchSettingItem *switchItem3 = [LYSwitchSettingItem itemWithImage:nil title:@"七乐彩" subtitle:@"每周二、五、日开奖"];
    LYSwitchSettingItem *switchItem4 = [LYSwitchSettingItem itemWithImage:nil title:@"七乐彩" subtitle:@"每周一、三、五开奖"];
    LYSwitchSettingItem *switchItem5 = [LYSwitchSettingItem itemWithImage:nil title:@"排列3" subtitle:@"每天开奖"];
    LYSwitchSettingItem *switchItem6 = [LYSwitchSettingItem itemWithImage:nil title:@"排列3" subtitle:@"每天开奖"];
    
    
    LYSettingGroup *group = [[LYSettingGroup alloc] init];
    group.items = @[switchItem,switchItem1,switchItem2,switchItem3,switchItem4,switchItem5,switchItem6];
    
    [self.groups addObject:group];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LYSettingCell *cell = [LYSettingCell settingCell:tableView withStyle:UITableViewCellStyleSubtitle];
    LYSettingGroup *group = self.groups[indexPath.section];
    cell.item = group.items[indexPath.row];
    
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
