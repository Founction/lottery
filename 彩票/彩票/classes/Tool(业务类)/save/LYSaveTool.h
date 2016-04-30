//
//  LYSaveTool.h
//  彩票
//
//  Created by 李胜营 on 16/4/30.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LYSaveTool : NSObject

+ (id)objectForKey:(NSString *)defaultName;
+ (void)setObject:(id)value forKey:(NSString *)defaultName;

@end
