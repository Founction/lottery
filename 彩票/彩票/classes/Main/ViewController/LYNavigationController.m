//
//  LYNavigationBar.m
//  彩票
//
//  Created by 李胜营 on 16/4/23.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYNavigationController.h"

@implementation LYNavigationController

+ (void)initialize
{

    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    
    [navBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    
    NSMutableDictionary *titleAttribute = [NSMutableDictionary dictionary];
    titleAttribute[NSForegroundColorAttributeName] = [UIColor whiteColor];
    titleAttribute[NSFontAttributeName] = [UIFont boldSystemFontOfSize:20];
    [navBar setTitleTextAttributes:titleAttribute];

}




@end
