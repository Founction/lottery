//
//  LYTittleView.m
//  彩票
//
//  Created by 李胜营 on 16/4/27.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYTittleView.h"

@implementation LYTittleView

- (void)setTitle:(NSString *)title forState:(UIControlState)state
{
    
    [super setTitle:title forState:state];

    [self sizeToFit];

}
- (void)setImage:(UIImage *)image forState:(UIControlState)state
{

    [super setImage:image forState:state];
    [self sizeToFit];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    if (self.imageView.x < self.titleLabel.x) {
        self.titleLabel.x = self.imageView.x;
        
        self.imageView.x = CGRectGetMidX(self.titleLabel.frame);
    }


}
@end
