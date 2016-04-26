//
//  manuItem.h
//  彩票
//
//  Created by 李胜营 on 16/4/25.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface manuItem : NSObject

/* 图片 */
@property (strong, nonatomic) UIImage * image;

+ (instancetype)manuItemWithImageName:(NSString *)imageName;

@end
