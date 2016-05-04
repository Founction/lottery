//
//  LYPushViewController.m
//  彩票
//
//  Created by 李胜营 on 16/5/3.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYPushViewController.h"
#import "LYSettingItem.h"
#import "LYSwitchSettingItem.h"
#import "LYArrowSettingItem.h"
#import "LYSettingGroup.h"
#import "LYAwardViewController.h"
#import "LYScoreViewController.h"
@interface LYPushViewController ()

@end

@implementation LYPushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpGroup1];
}
- (void)setUpGroup1
{
    
    LYArrowSettingItem *redeemCode = [LYArrowSettingItem itemWithImage:nil title:@"开奖推送" subtitle:nil];
    redeemCode.destVC = [LYAwardViewController class];
    
    
    LYArrowSettingItem *item = [LYArrowSettingItem itemWithImage:nil title:@"比分直播" subtitle:nil];
    item.destVC = [LYScoreViewController class];
    
    LYArrowSettingItem *item1 = [LYArrowSettingItem itemWithImage:nil title:@"使用兑换码" subtitle:nil];
    LYArrowSettingItem *item2 = [LYArrowSettingItem itemWithImage:nil title:@"使用兑换码" subtitle:nil];
    
    
    // 当前组有多少行
    LYSettingGroup *group = [LYSettingGroup groupWithItems:@[redeemCode,item,item1,item2]];
    
    [self.groups addObject:group];


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
