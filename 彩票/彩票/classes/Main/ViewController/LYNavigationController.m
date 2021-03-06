//
//  LYNavigationBar.m
//  彩票
//
//  Created by 李胜营 on 16/4/23.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYNavigationController.h"

@interface LYNavigationController()<UINavigationControllerDelegate,UIGestureRecognizerDelegate>
/* <#信息#> */
@property (strong, nonatomic) id popDelegate;
@end

@implementation LYNavigationController

+ (void)initialize
{

    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    
    [navBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    
    [navBar setTintColor:[UIColor whiteColor]];

    NSMutableDictionary *titleAttribute = [NSMutableDictionary dictionary];
    titleAttribute[NSForegroundColorAttributeName] = [UIColor whiteColor];
    titleAttribute[NSFontAttributeName] = [UIFont boldSystemFontOfSize:20];
    [navBar setTitleTextAttributes:titleAttribute];
    
//    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -120) forBarMetrics:UIBarMetricsDefault];也可以将文本移到可视范围之外。

}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.interactivePopGestureRecognizer.enabled = NO;
    self.delegate = self;
    self.popDelegate = self.interactivePopGestureRecognizer.delegate;
    
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self.interactivePopGestureRecognizer.delegate action:@selector(handleNavigationTransition:)];
    
    pan.delegate = self;
    
    [self.view addGestureRecognizer:pan];


}
//在这里恢复代理，能够使滑动


- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{

    if (self.viewControllers.count != 0)
    {
        viewController.hidesBottomBarWhenPushed = YES;
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"NavBack"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
  
    }

    [super pushViewController:viewController animated:YES];
}


- (void)back
{
    
    [self popViewControllerAnimated:YES];

}


@end
