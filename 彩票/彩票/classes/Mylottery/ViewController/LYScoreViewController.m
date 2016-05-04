//
//  LYScoreViewController.m
//  彩票
//
//  Created by 李胜营 on 16/5/3.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYScoreViewController.h"


@interface LYScoreViewController ()

@end

@implementation LYScoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpgroup];
    [self setUpgroup1];
}
- (void)setUpgroup
{
    LYSettingItem *item = [LYSettingItem itemWithImage:nil title:@"推送我关注的比赛" subtitle:nil];
    
    LYSettingGroup *group = [[LYSettingGroup alloc] init];
    
    group.foottitle = @"开启后，当我投注或关注的比赛开始、进球和结束时，会自动发送推送消息提醒我";
    
    group.items = @[item];
    
    [self.groups addObject:group];
    
}

- (void)setUpgroup1
{
    LYSettingItem *item = [LYSettingItem itemWithImage:nil title:@"开始时间" subtitle:@"00:00"];
    //避免循环利用
    __weak LYScoreViewController *wekSelf = self;
    item.itemOperation = ^(NSIndexPath *indexPath){
        UITableViewCell *cell = [wekSelf.tableView cellForRowAtIndexPath:indexPath];
        
        UITextField *textField = [[UITextField alloc] init];
        [textField becomeFirstResponder];
        
        [cell addSubview:textField];
    
    };
    LYSettingGroup *group = [[LYSettingGroup alloc] init];
    group.headtitle = @"只有一下时间接受比分推送";
    group.items = @[item];
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
