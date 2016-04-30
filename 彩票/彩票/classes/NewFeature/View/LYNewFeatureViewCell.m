//
//  LYNewFeatureViewCell.m
//  彩票
//
//  Created by 李胜营 on 16/4/27.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYNewFeatureViewCell.h"
#import "LYTabBarController.h"

@interface LYNewFeatureViewCell ()
/* uiimageview */
@property (weak, nonatomic) UIImageView * imageView;

/* 开始按钮 */
@property (strong, nonatomic) UIButton * startButton;

@end
@implementation LYNewFeatureViewCell

- (UIButton *)startButton
{
    if (_startButton == nil) {
        _startButton = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [_startButton setBackgroundImage:[UIImage imageNamed:@"guideStart"] forState:UIControlStateNormal];
        [_startButton sizeToFit];
        [_startButton addTarget:self action:@selector(start) forControlEvents:UIControlEventTouchUpInside];
        _startButton.center = CGPointMake(self.width * 0.5, self.height * 0.8);
        [self.contentView addSubview:_startButton];
        
    }


    return _startButton;
}
- (void)start
{
    LYTabBarController *tabVC = [[LYTabBarController alloc] init];
    
    LYWindow.rootViewController = tabVC;
    
    //设置转场动画
    CATransition *anim = [CATransition animation];
    anim.duration = 0.5;
    anim.type = @"rippleffect";
    [LYWindow.layer addAnimation:anim forKey:nil];
    
}
- (void)hideStartButton:(NSIndexPath *)indexPath count:(NSInteger)pagesCount
{
    if (indexPath.row == pagesCount - 1) {
        self.startButton.hidden = NO;
    }else
    {
        self.startButton.hidden = YES;
    }
}
- (UIImageView *)imageView
{
    if (_imageView == nil)
    {
        UIImageView *imageV = [[UIImageView alloc] initWithFrame:self.bounds];
        _imageView = imageV;
        
        [self.contentView addSubview:imageV];
    }
    return _imageView;
}

- (void)setImage:(UIImage *)image
{
    _image = image;
    
    self.imageView.image = image;


}
@end
