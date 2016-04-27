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
#import "LYNavigationController.h"
#import "LYArenaNavigationController.h"

@interface LYTabBarController ()<LYTabBarDelegate>

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
    tabBar.delegate = self;
 
    [self.view addSubview:tabBar];

}
- (void)setUpAllChildViewController
{
    //竞技场
    LYArenaViewController *arenaVC = [[LYArenaViewController alloc] init];
    [self setUpOneChildViewController:arenaVC setImage:[UIImage imageNamed:@"TabBar_Arena_new"] setSeletedImage:[UIImage imageNamed:@"TabBar_Arena_selected_new"] title:nil];
    //发现
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"LYDiscoverViewController" bundle:[NSBundle mainBundle]];
    LYDiscoverViewController *discoverVC = [storyboard instantiateInitialViewController];
    [self setUpOneChildViewController:discoverVC setImage:[UIImage imageNamed:@"TabBar_Discovery_new"] setSeletedImage:[UIImage imageNamed:@"TabBar_Discovery_selected_new"] title:@"发现"];
    
    //hall
    LYHallViewController *hallVC = [[LYHallViewController alloc] init];
    [self setUpOneChildViewController:hallVC setImage:[UIImage imageNamed:@"TabBar_LotteryHall_new"] setSeletedImage:[UIImage imageNamed:@"TabBar_LotteryHall_selected_new"] title:@"购彩大厅"];
    
    //history
    
 
    LYHistoryViewController *historyVC = [[LYHistoryViewController alloc] init];
    [self setUpOneChildViewController:historyVC setImage:[UIImage imageNamed:@"TabBar_History_new"] setSeletedImage:[UIImage imageNamed:@"TabBar_History_selected_new"] title:@"开奖信息"];
    
    //mylottery
    LYMylotteryViewController *MylotteryVC = [[LYMylotteryViewController alloc] init];
    [self setUpOneChildViewController:MylotteryVC setImage:[UIImage imageNamed:@"TabBar_MyLottery_new"] setSeletedImage:[UIImage imageNamed:@"TabBar_MyLottery_selected_new"] title:@"我的彩票"];

}

- (void)setUpOneChildViewController:(UIViewController *)vc setImage:(UIImage *)image setSeletedImage:(UIImage *)seletedImage title:(NSString *)title
{
    
    vc.navigationItem.title = title;
    
    vc.tabBarItem.image = image;
    vc.tabBarItem.selectedImage = seletedImage;
    
    
    
    [self.items addObject:vc.tabBarItem];
    
    vc.view.backgroundColor = [self randomColor];
    
    UINavigationController *nav = [[LYNavigationController alloc] initWithRootViewController:vc];
    
    if ([vc isKindOfClass:[LYArenaViewController class]]) {
        nav = [[LYArenaNavigationController alloc]initWithRootViewController:vc];
    }
    
    [self addChildViewController:nav];
    
}

- (void)tabBar:(LYTabBar *)tabBar didClickedIndex:(NSInteger)index
{
    
    self.selectedIndex = index;


}

- (UIColor *)randomColor
{
    CGFloat r = arc4random_uniform(256) / 255.0;
    CGFloat g = arc4random_uniform(256) / 255.0;
    CGFloat b = arc4random_uniform(256) / 255.0;
    
    UIColor *color = [UIColor colorWithRed:r green:g blue:b alpha:1.0];
    return color;
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
