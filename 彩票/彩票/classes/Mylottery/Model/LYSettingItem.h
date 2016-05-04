//
//  LYSettingItem.h
//  彩票
//
//  Created by 李胜营 on 16/5/1.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LYSettingItem : NSObject
/* title */
@property (strong, nonatomic) NSString * title;

/* subtitle */
@property (strong, nonatomic) NSString * subtitle;
/* image */
@property (strong, nonatomic) UIImage * image;

/* 保存每一行cell的功能 */
@property (strong, nonatomic) void(^itemOperation)(NSIndexPath *indexPath);

+ (instancetype)itemWithImage:(UIImage *)image title:(NSString *)title subtitle:(NSString *)subtitle;

@end
