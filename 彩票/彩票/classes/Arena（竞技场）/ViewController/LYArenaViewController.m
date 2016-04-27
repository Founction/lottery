//
//  LYViewController.m
//  彩票
//
//  Created by 李胜营 on 16/4/23.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYArenaViewController.h"

@interface LYArenaViewController ()

@end

@implementation LYArenaViewController

- (void)loadView
{
    
    UIImageView *imageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"NLArenaBackground"]];
    
    imageV.userInteractionEnabled = YES;

    
    self.view = imageV;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UISegmentedControl *seg = [[UISegmentedControl alloc] initWithItems:@[@"篮球",@"足球"]];
    
    
    seg.width += 40;
    
    [seg setBackgroundImage:[UIImage imageWithOrigRendingImage:@"CPArenaSegmentBG"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [seg setBackgroundImage:[UIImage imageWithOrigRendingImage:@"CPArenaSegmentSelectedBG"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    //29 80 105
    seg.tintColor = [UIColor colorWithRed:29 green:80 blue:105 alpha:1.0];
    
    
    self.navigationItem.titleView = seg;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
