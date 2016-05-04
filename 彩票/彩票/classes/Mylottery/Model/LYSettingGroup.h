//
//  LYSettingGroup.h
//  彩票
//
//  Created by 李胜营 on 16/5/1.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import <Foundation/Foundation.h>
@class LYSettingItem;
@interface LYSettingGroup : NSObject

/* item */
@property (strong, nonatomic) NSArray * items;
/* grouptitle */
@property (strong, nonatomic) NSString * headtitle;

/* <#信息#> */
@property (strong, nonatomic) NSString * foottitle;

+ (instancetype)groupWithItems:(NSArray *)items;
@end
