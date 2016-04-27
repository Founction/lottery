//
//  LYCover.m
//  彩票
//
//  Created by 李胜营 on 16/4/25.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYCover.h"

@implementation LYCover


+ (void)show
{
    LYCover *cover = [[LYCover alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    cover.backgroundColor = [UIColor blackColor];
    cover.alpha = 0.6;
    
    [[UIApplication sharedApplication].keyWindow addSubview:cover];


}
+ (void)hide
{

        for (UIView *view in LYWindow.subviews)
    {
        if ([view isKindOfClass:self]) {
            [view removeFromSuperview];
        }
    }
}

@end
