//
//  LYActiveManu.m
//  彩票
//
//  Created by 李胜营 on 16/4/25.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYActiveManu.h"
@interface LYActiveManu()
/*  图片 */
@property (strong, nonatomic) UIView * activeMant;
@end
@implementation LYActiveManu
- (IBAction)clickClose:(id)sender {
    
    
    if ([_delegate respondsToSelector:@selector(activedidClickCloseButtonWithManu:)]) {
        [_delegate activedidClickCloseButtonWithManu:self];
    }
   
}
- (void)hideActiveManuInpoint:(CGPoint)Point complention:(void(^)())complention
{
    
        [UIView animateWithDuration:1 animations:^{
        
        CGAffineTransform transform = CGAffineTransformIdentity;
        
        transform = CGAffineTransformTranslate(transform,-self.center.x + 44, -self.center.y + 44);
        
        
        transform = CGAffineTransformScale(transform,0.01,0.01);
        
        self.transform = transform;
        
  
    } completion:^(BOOL finished){
        
        complention();
        
        [self removeFromSuperview];
    }];
    
}
+ (instancetype)showActiveManuInPoint:(CGPoint)point
{
    LYActiveManu *activeMant = [LYActiveManu activeManu];
    
    activeMant.center = point;
    
    [LYWindow addSubview:activeMant];
    return activeMant;
}

+ (instancetype)activeManu
{

    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil][0];

}
@end
