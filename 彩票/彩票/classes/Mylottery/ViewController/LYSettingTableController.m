//
//  LYSettingTableController.m
//  彩票
//
//  Created by 李胜营 on 16/5/1.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYSettingTableController.h"
#import "LYSettingItem.h"
#import "LYSettingGroup.h"
#import "LYSettingCell.h"
#import "LYBlurView.h"
#import "MBProgressHUD+XMG.h"
#import "LYArrowSettingItem.h"
#import "LYSwitchSettingItem.h"
#import "LYPushViewController.h"
#import "LYHelpViewController.h"

@interface LYSettingTableController ()


@end

@implementation LYSettingTableController
- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.title = @"设置";

    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"常见问题" style:UIBarButtonItemStylePlain target:self action:@selector(help)];
    
    [self setUpGroup0];
    [self setUpGroup1];
    [self setUpGroup2];
}
- (void)help
{
    
    LYHelpViewController *helpVC = [[LYHelpViewController alloc] init];
    helpVC.title = @"帮助";
    [self.navigationController pushViewController:helpVC animated:YES];

}

- (void)setUpGroup0
{
    LYArrowSettingItem *item = [LYArrowSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"检查有没有最新的版本" subtitle:nil];
    item.itemOperation = ^(NSIndexPath *indexPate){
        LYBlurView *blurV = [[LYBlurView alloc] initWithFrame:LYWindow.frame];
        [LYWindow addSubview:blurV];
        
        [MBProgressHUD showSuccess:@"xxxxx"];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [blurV removeFromSuperview];
        });
    
    };
    LYSettingGroup *group = [LYSettingGroup groupWithItems:@[item]];
    
    group.headtitle = @"asdgs";
    
    [self.groups addObject:group];

}
- (void)setUpGroup1
{
    LYArrowSettingItem *item = [LYArrowSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"推送和提醒" subtitle:nil];
    
    item.destVC = [LYPushViewController class];
    
    LYSwitchSettingItem *item1 = [LYSwitchSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码" subtitle:nil];
    
    LYSwitchSettingItem *item2 = [LYSwitchSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码" subtitle:nil];
    LYSettingGroup *group = [LYSettingGroup groupWithItems:@[item,item1,item2]];
    
    group.headtitle = @"asdgs";
    
    [self.groups addObject:group];

}

- (void)setUpGroup2
{
    LYSwitchSettingItem *item = [LYSwitchSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码" subtitle:nil];
    
    LYSwitchSettingItem *item1 = [LYSwitchSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码" subtitle:nil];
    
   LYSwitchSettingItem *item2 = [LYSwitchSettingItem itemWithImage:[UIImage imageNamed:@"RedeemCode"] title:@"使用兑换码" subtitle:nil];
    LYSettingGroup *group = [LYSettingGroup groupWithItems:@[item,item1,item2]];
    
    group.headtitle = @"asdgs";
    
    [self.groups addObject:group];
    
}

@end
