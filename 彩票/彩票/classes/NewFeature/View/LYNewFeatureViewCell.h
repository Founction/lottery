//
//  LYNewFeatureViewCell.h
//  彩票
//
//  Created by 李胜营 on 16/4/27.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LYNewFeatureViewCell : UICollectionViewCell

/* image */
@property (strong, nonatomic) UIImage * image;

// 按钮隐藏方法
- (void)hideStartButton:(NSIndexPath *)indexPath count:(NSInteger)pagesCount;


@end
