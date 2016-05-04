//
//  LYSettingGroup.m
//  彩票
//
//  Created by 李胜营 on 16/5/1.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYSettingGroup.h"

@implementation LYSettingGroup
+ (instancetype)groupWithItems:(NSArray *)items
{
    LYSettingGroup *group = [[self alloc] init];
    
    group.items = items;
    
    return group;
}
@end
