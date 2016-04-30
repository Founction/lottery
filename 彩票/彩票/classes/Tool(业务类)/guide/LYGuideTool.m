//
//  LYGuideTool.m
//  彩票
//
//  Created by 李胜营 on 16/4/30.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYGuideTool.h"
#import "LYSaveTool.h"
#import "LYTabBarController.h"
#import "LYNewFeatureCollectionViewController.h"

@implementation LYGuideTool
+ (UIViewController *)guideTool
{
    NSString *curVersion = [NSBundle mainBundle].infoDictionary[@"CFBundleShortVersionString"];
    
    NSString *oldVersion = [LYSaveTool objectForKey:@"version"];
    
    UIViewController *vc = nil;
    if ([curVersion isEqualToString:oldVersion])
    {
        vc = [[LYTabBarController alloc] init];
    }else{
        vc = [[LYNewFeatureCollectionViewController alloc] init];
    
        [LYSaveTool setObject:curVersion forKey:@"version"];
    }

    return vc;

}
@end
