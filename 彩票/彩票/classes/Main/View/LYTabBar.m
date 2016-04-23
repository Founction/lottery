//
//  LYTabBar.m
//  彩票
//
//  Created by 李胜营 on 16/4/23.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYTabBar.h"

@implementation LYTabBar
- (void)setItems:(NSArray *)items
{
     _items = items;
    
    for (UITabBarItem *tabBar in items)
    {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [btn setImage:tabBar.image forState:UIControlStateNormal];
        [btn setImage:tabBar.selectedImage forState:UIControlStateSelected];
        
        [self addSubview:btn];
    }

}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    int count = (int)self.subviews.count;
    
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat w = [UIScreen mainScreen].bounds.size.width / count;
    CGFloat h = self.bounds.size.height;
    
    for (int i = 0;i < count;i++)
    {
        UIButton *btn = self.subviews[i];
        x = i * w;
        btn.frame = CGRectMake(x, y, w, h);
    }

}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
