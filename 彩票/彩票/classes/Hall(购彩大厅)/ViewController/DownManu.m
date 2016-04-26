//
//  DownManu.m
//  彩票
//
//  Created by 李胜营 on 16/4/25.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "DownManu.h"
#import "manuItem.h"

#define LYCols 3
#define LYItemWH LYScreenBounds.size.width / LYCols
@interface DownManu()

/* buttons */
@property (strong, nonatomic) NSMutableArray * buttons;
/* <#信息#> */
@property (strong, nonatomic) DownManu * dw;
@end

@implementation DownManu
- (void)hideDownManu
{
    [UIView animateWithDuration:0.5 animations:^{
    
        self.transform = CGAffineTransformMakeTranslation(0, -self.height);
    
    } completion:^(BOOL finished)
    {
    
     [self removeFromSuperview];
    
    }];
    
   

}

+ (instancetype)showDownManuInView:(UIView *)superView withItems:(NSArray *)items
{
    int rows = (int)items.count / LYCols;
    
    CGFloat manuH = rows * LYItemWH;

    DownManu *downManu = [[DownManu alloc] initWithFrame:CGRectMake(0, 0, LYScreenBounds.size.width, manuH)];
    
    downManu.ManuItems = items;
    
    downManu.backgroundColor = [UIColor blackColor];
    [downManu setUpAllButton];
    [downManu setUpAllDivideLine];
    
    UIView *blackV = [[UIView alloc] initWithFrame:downManu.frame];
    blackV.backgroundColor = [UIColor blackColor];
    [superView addSubview:blackV];
    
    //添加出现动画
    downManu.transform = CGAffineTransformTranslate(downManu.transform, 0, -downManu.height);
   
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.3 initialSpringVelocity:0.2 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        downManu.transform = CGAffineTransformIdentity;
    
    } completion:^(BOOL finished){
        [blackV removeFromSuperview];
    
    }];
  
    
    [superView addSubview:downManu];
    
    return downManu;
}

- (void)setUpAllDivideLine
{
    //竖线
    for (int i = 1; i < LYCols; i++)
    {
        UIView *v = [[UIView alloc] initWithFrame:CGRectMake(i * LYItemWH, 0, 1, self.height)];
        v.backgroundColor = [UIColor whiteColor];
        [self addSubview:v];
    }
    //横线
    for (int i = 1; i < (int)self.ManuItems.count / LYCols; i++) {
        UIView *v = [[UIView alloc] initWithFrame:CGRectMake(0, i * LYItemWH, self.width, 1)];
        v.backgroundColor = [UIColor whiteColor];
        [self addSubview:v];
    }

}
- (void)setUpAllButton
{
       self.buttons = [NSMutableArray array];
    
//    [DownManu setUpAllButtons];
    
    for (manuItem *item in self.ManuItems)
    {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setImage:item.image forState:UIControlStateNormal];
        
        [self addSubview:btn];
        [self.buttons addObject:btn];
    }
    
}
- (void)layoutSubviews
{
    [super layoutSubviews];
 
    
    for (int i = 0; i < self.buttons.count;i++)
    {
        int row = i / 3;
        int col = i % 3;
        CGFloat x = col * LYItemWH;
        CGFloat y = row * LYItemWH;
        CGFloat w = LYItemWH;
        UIButton *btn = self.buttons[i];
        btn.frame =CGRectMake(x, y, w, w);
        
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
