//
//  UIImage+Image.h
//  彩票
//
//  Created by 李胜营 on 16/4/25.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Image)

//给UIimage添加一个返回原始图片的方法。
+ (UIImage *)imageWithOrigRendingImage:(NSString *)imageName;
@end
