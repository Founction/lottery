//
//  LYSettingItem.m
//  彩票
//
//  Created by 李胜营 on 16/5/1.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYSettingItem.h"

@implementation LYSettingItem

+ (instancetype)itemWithImage:(UIImage *)image title:(NSString *)title subtitle:(NSString *)subtitle
{
    LYSettingItem *item = [[self alloc] init];
    
    item.image = image;
    item.title = title;
    item.subtitle = subtitle;
    
    
    return item;
    
}


@end
