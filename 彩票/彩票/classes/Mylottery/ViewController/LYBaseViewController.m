//
//  LYBaseViewController.m
//  彩票
//
//  Created by 李胜营 on 16/5/1.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYBaseViewController.h"
#import "LYSettingCell.h"
#import "LYSettingGroup.h"
#import "LYSettingItem.h"
#import "LYArrowSettingItem.h"
#import "LYSwitchSettingItem.h"

@interface LYBaseViewController ()

@end

@implementation LYBaseViewController
- (NSMutableArray *)groups
{
    if (_groups == nil)
    {
        _groups = [NSMutableArray array];
        
    }
    return _groups;
}
- (instancetype)init
{
    return [super initWithStyle:UITableViewStyleGrouped];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.groups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    LYSettingGroup *group = self.groups[section];

    return group.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    LYSettingCell *cell = [LYSettingCell settingCell:tableView withStyle:UITableViewCellStyleValue1];
    
    LYSettingGroup *group = self.groups[indexPath.section];
    cell.item = group.items[indexPath.row];
    
    return cell;
}
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    LYSettingGroup *group = self.groups[section];
    return group.foottitle;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    LYSettingGroup *group = self.groups[section];
    return group.headtitle;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    LYSettingGroup *group = self.groups[indexPath.section];
    LYSettingItem *item = group.items[indexPath.row];
    
    if (item.itemOperation) {
        item.itemOperation(indexPath);
        return;
    }
    
    if ([item isKindOfClass:[LYArrowSettingItem class]])
    {
        LYArrowSettingItem *arrowItem = (LYArrowSettingItem *)item;
        
        if (arrowItem.destVC) {
            UIViewController *vc = [[arrowItem.destVC alloc] init];
            
            [self.navigationController pushViewController:vc animated:YES];
        }
    }
}

@end
