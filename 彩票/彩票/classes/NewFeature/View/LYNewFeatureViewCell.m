//
//  LYNewFeatureViewCell.m
//  彩票
//
//  Created by 李胜营 on 16/4/27.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYNewFeatureViewCell.h"

@interface LYNewFeatureViewCell ()
/* uiimageview */
@property (weak, nonatomic) UIImageView * imageView;

@end
@implementation LYNewFeatureViewCell

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
