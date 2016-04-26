//
//  LYHallViewController.m
//  彩票
//
//  Created by 李胜营 on 16/4/23.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYHallViewController.h"
#import "UIImage+Image.h"
#import "LYCover.h"
#import "LYActiveManu.h"
#import "DownManu.h"
#import "manuItem.h"

@interface LYHallViewController ()<LYActiveManuDelegate>
/* 下拉视图模型 */
@property (strong, nonatomic) manuItem * item;
/* 模型数组 */
@property (strong, nonatomic) NSArray * items;

/* downmanu bool */
@property (assign, nonatomic) BOOL * isDownManu;
/* downmanu */
@property (strong, nonatomic) DownManu * downM;

@end

@implementation LYHallViewController
- (NSArray *)items
{
    if (_items == nil)
    {
        manuItem *item = [manuItem manuItemWithImageName:@"Development"];
        manuItem *item1 = [manuItem manuItemWithImageName:@"Development"];
        manuItem *item2 = [manuItem manuItemWithImageName:@"Development"];
        manuItem *item3 = [manuItem manuItemWithImageName:@"Development"];
        manuItem *item4 = [manuItem manuItemWithImageName:@"Development"];
        manuItem *item5 = [manuItem manuItemWithImageName:@"Development"];
        _items = @[item,item1,item2,item3,item4,item5];
    }

    
    return _items;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageWithOrigRendingImage:@"CS50_activity_image"] style:UIBarButtonItemStylePlain target:self action:@selector(action)];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageWithOrigRendingImage:@"Development"] style:UIBarButtonItemStylePlain target:self action:@selector(popManu)];
    
   
    
}

- (void)popManu
{
    if (_isDownManu) {
        self.downM = [DownManu showDownManuInView:self.view withItems:self.items];
    }else
    {
        [self.downM hideDownManu];
    
    }
    
    _isDownManu = !_isDownManu;

}
- (void)action
{
    [LYCover show];
    LYActiveManu *activeManu = [LYActiveManu showActiveManuInPoint:self.view.center];
    activeManu.delegate = self;


}
- (void)activedidClickCloseButtonWithManu:(LYActiveManu *)actiManu
{
    [actiManu hideActiveManuInpoint:CGPointMake(44, 44) complention:^{
    
        [LYCover hide];
    }];
    

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
