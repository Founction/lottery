//
//  DownManu.h
//  彩票
//
//  Created by 李胜营 on 16/4/25.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DownManu : UIView
/* model array */
@property (strong, nonatomic) NSArray * ManuItems;

+ (instancetype)showDownManuInView:(UIView *)superView withItems:(NSArray *)items;

- (void)hideDownManu;
@end
