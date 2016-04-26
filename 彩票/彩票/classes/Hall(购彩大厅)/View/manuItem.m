//
//  manuItem.m
//  彩票
//
//  Created by 李胜营 on 16/4/25.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "manuItem.h"

@implementation manuItem
+ (instancetype)manuItemWithImageName:(NSString *)imageName
{

    manuItem *item = [[manuItem alloc] init];
    item.image = [UIImage imageWithOrigRendingImage:imageName];
    return item;
}
@end
