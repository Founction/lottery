//
//  LYSaveTool.m
//  彩票
//
//  Created by 李胜营 on 16/4/30.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYSaveTool.h"

@implementation LYSaveTool
+ (id)objectForKey:(NSString *)defaultName
{
    return [[NSUserDefaults standardUserDefaults] objectForKey:defaultName];



}
+ (void)setObject:(id)value forKey:(NSString *)defaultName
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults setObject:value forKey:defaultName];
}
@end
