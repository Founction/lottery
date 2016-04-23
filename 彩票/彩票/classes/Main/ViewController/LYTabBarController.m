//
//  LYTabBarController.m
//  彩票
//
//  Created by 李胜营 on 16/4/23.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYTabBarController.h"
#import "LYArenaViewController.h"
#import "LYDiscoverViewController.h"
#import "LYHallViewController.h"
#import "LYHistoryViewController.h"
#import "LYMylotteryViewController.h"
#import "LYTabBar.h"

@interface LYTabBarController ()

/* 记录所有的子控制器 */
@property (strong, nonatomic) NSMutableArray * items;

@end

@implementation LYTabBarController

- (NSMutableArray *)items{

    if (_items == nil) {
        _items = [NSMutableArray array];
    }
    return _items;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tabBar removeFromSuperview];
    
    [self setUpAllChildViewController];
    
    LYTabBar *tabBar = [[LYTabBar alloc] init];
    tabBar.items = self.items;
    tabBar.frame = self.tabBar.frame;
    [self.view addSubview:tabBar];

}
- (void)setUpAllChildViewController
{
    //竞技场
    LYArenaViewController *arenaVC = [[LYArenaViewController alloc] init];
    [self setUpOneChildViewController:arenaVC setImage:[UIImage imageNamed:@"TabBar_Arena_new"] setSeletedImage:[UIImage imageNamed:@"TabBar_Arena_selected_new"]];
    //发现
    LYDiscoverViewController *discoverVC = [[LYDiscoverViewController alloc] init];
    [self setUpOneChildViewController:discoverVC setImage:[UIImage imageNamed:@"TabBar_Discovery_new"] setSeletedImage:[UIImage imageNamed:@"TabBar_Discovery_selected_new"]];
    
    //hall
    LYHallViewController *hallVC = [[LYHallViewController alloc] init];
    [self setUpOneChildViewController:hallVC setImage:[UIImage imageNamed:@"TabBar_LotteryHall_new"] setSeletedImage:[UIImage imageNamed:@"TabBar_LotteryHall_selected_new"]];
    
    //history
    LYHistoryViewController *historyVC = [[LYHistoryViewController alloc] init];
    [self setUpOneChildViewController:historyVC setImage:[UIImage imageNamed:@"TabBar_History_new"] setSeletedImage:[UIImage imageNamed:@"TabBar_History_selected_new"]];
    
    //mylottery
    LYMylotteryViewController *MylotteryVC = [[LYMylotteryViewController alloc] init];
    [self setUpOneChildViewController:MylotteryVC setImage:[UIImage imageNamed:@"TabBar_MyLottery_new"] setSeletedImage:[UIImage imageNamed:@"TabBar_MyLottery_selected_new"]];

}

- (void)setUpOneChildViewController:(UIViewController *)vc setImage:(UIImage *)image setSeletedImage:(UIImage *)seletedImage
{
    vc.tabBarItem.image = image;
    vc.tabBarItem.selectedImage = seletedImage;
    
    
    [self.items addObject:vc.tabBarItem];
    
    [self addChildViewController:vc];
    
    

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
