//
//  LYArenaNavigationController.m
//  彩票
//
//  Created by 李胜营 on 16/4/26.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYArenaNavigationController.h"

@interface LYArenaNavigationController ()

@end

@implementation LYArenaNavigationController
+ (void)initialize{
    
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    
    [bar setBackgroundImage:[UIImage imageNamed:@"NLArenaNavBar64"] forBarMetrics:UIBarMetricsDefault];
    

}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    

 
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
