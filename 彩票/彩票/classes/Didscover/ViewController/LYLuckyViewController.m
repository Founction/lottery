//
//  LYLuckyViewController.m
//  彩票
//
//  Created by 李胜营 on 16/4/26.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYLuckyViewController.h"

@interface LYLuckyViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *lightView;

@end

@implementation LYLuckyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"lucky_entry_light0"];
    UIImage *image1 = [UIImage imageNamed:@"lucky_entry_light1"];
    
    self.lightView.animationImages = @[image,image1];
    self.lightView.animationDuration = 1.0;
    [self.lightView startAnimating];
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
