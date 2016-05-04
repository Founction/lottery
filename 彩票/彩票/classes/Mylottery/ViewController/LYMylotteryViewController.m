//
//  LYMylotteryViewController.m
//  彩票
//
//  Created by 李胜营 on 16/4/23.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYMylotteryViewController.h"
#import "LYSettingTableController.h"


#import "UIImage+Image.h"
@interface LYMylotteryViewController ()
@property (weak, nonatomic) IBOutlet UIButton *loginButton;


@end

@implementation LYMylotteryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = self.loginButton.currentBackgroundImage;
    
    image = [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
    
    [self.loginButton setBackgroundImage:image forState:UIControlStateNormal];
    

    [self setUpNav];
}
- (void)setUpNav
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"客服" forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"FBMM_Barbutton"] forState:UIControlStateNormal];
    [btn sizeToFit];

    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageWithOrigRendingImage:@"Mylottery_config"] style:UIBarButtonItemStylePlain target:self action:@selector(setting)];
}

- (void)setting
{
    LYSettingTableController *vc = [[LYSettingTableController alloc] init];
    
    [self.navigationController pushViewController:vc animated:YES];


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
