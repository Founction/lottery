//
//  LYHelpItem.h
//  彩票
//
//  Created by 李胜营 on 16/5/3.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LYHelpItem : NSObject
/* title */
@property (strong, nonatomic) NSString * title;
/* html */
@property (strong, nonatomic) NSString * html;
/* id */
@property (strong, nonatomic) NSString * ID;

+ (instancetype)helpItemWithDic:(NSDictionary *)dic;
@end
