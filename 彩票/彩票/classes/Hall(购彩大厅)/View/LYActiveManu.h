//
//  LYActiveManu.h
//  彩票
//
//  Created by 李胜营 on 16/4/25.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LYActiveManu;

@protocol LYActiveManuDelegate <NSObject>

- (void)activedidClickCloseButtonWithManu:(LYActiveManu *)actiManu;

@end
@interface LYActiveManu : UIView
/* delegate */
@property (weak, nonatomic) id<LYActiveManuDelegate> delegate;
+ (instancetype)showActiveManuInPoint:(CGPoint)point;


- (void)hideActiveManuInpoint:(CGPoint)Point complention:(void(^)())complention;
@end
