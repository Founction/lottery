//
//  UIImage+Image.m
//  彩票
//
//  Created by 李胜营 on 16/4/25.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "UIImage+Image.h"

@implementation UIImage (Image)
//给UIimage添加一个返回原始图片的方法。
+ (UIImage *)imageWithOrigRendingImage:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}
@end
