//
//  LYTabBar.h
//  彩票
//
//  Created by 李胜营 on 16/4/23.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LYTabBar;
@protocol LYTabBarDelegate <NSObject>
@optional
- (void)tabBar:(LYTabBar *)tabBar didClickedIndex:(NSInteger)index;

@end
@interface LYTabBar : UIView
/* 模型数组 */
@property (strong, nonatomic) NSArray * items;

/* delegate */
@property (weak, nonatomic) id<LYTabBarDelegate>  delegate;
@end
