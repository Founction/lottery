//
//  LYTabBar.m
//  彩票
//
//  Created by 李胜营 on 16/4/23.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYTabBar.h"
#import "LYTabBarButton.h"
@interface LYTabBar()
/*选中纪录 */
@property (strong, nonatomic) LYTabBarButton * selBtn;

@end
@implementation LYTabBar
- (void)setItems:(NSArray *)items
{
     _items = items;
    
    for (UITabBarItem *tabBar in items)
    {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        btn.tag = self.subviews.count;
        
        
        [btn setBackgroundImage:tabBar.image forState:UIControlStateNormal];
        [btn setBackgroundImage:tabBar.selectedImage forState:UIControlStateSelected];
        
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
        
        [self addSubview:btn];
        
        if (self.subviews.count == 1) {
            
            [self btnClick:btn];
        }
    }
}
- (void)btnClick:(LYTabBarButton *)btn
{
    _selBtn.selected = NO;
    btn.selected= YES;
    _selBtn = btn;
    
    if ([_delegate respondsToSelector:@selector(tabBar:didClickedIndex:)])
    {
        [_delegate tabBar:self didClickedIndex:btn.tag];
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
