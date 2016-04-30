//
//  UIView+Frame.m
//  彩票
//
//  Created by 李胜营 on 16/4/25.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

- (double)centerX
{
    return self.center.x;
}

-(void)setCenterX:(double)centerX
{
    CGPoint point = self.center;
    point.x = centerX;
    self.center = point;
}
- (double)centerY
{
    return self.center.y;
}

-(void)setCenterY:(double)centerY
{
    CGPoint point = self.center;
    point.y = centerY;
    self.center = point;
}
- (CGFloat)x
{
    return self.frame.origin.x;
}
- (void)setX:(CGFloat)x
{
    CGRect rect = self.frame;
    rect.origin.x = x;
    self.frame = rect;
}
- (CGFloat)y
{
    return self.frame.origin.y;
}
- (void)setY:(CGFloat)y
{
    CGRect rect = self.frame;
    rect.origin.y = y;
    self.frame = rect;
}
- (CGFloat)width
{
    return self.frame.size.width;
}
- (void)setWidth:(CGFloat)width
{
    CGRect rect = self.frame;
    rect.size.width = width;
    self.frame = rect;
}
- (CGFloat)height
{
    return self.frame.size.height;
}
- (void)setHeight:(CGFloat)height
{
    CGRect rect = self.frame;
    rect.size.height = height;
    self.frame = rect;
}
@end
