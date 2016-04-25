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
    [UIView animateWithDuration:0.1 animations:^{
        
        self.transform = CGAffineTransformMakeScale(0, 0);
    
    
    
    } completion:^(BOOL finished){
    
        [self removeFromSuperview];
    }];
    
    
    
    
    
    
}

+ (void)showActiveManuInPoint:(CGPoint)point
{
    LYActiveManu *activeMant = [LYActiveManu activeManu];
    
    activeMant.center = point;
    
    [LYWindow addSubview:activeMant];

}

+ (instancetype)activeManu
{

    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil][0];

}
@end
