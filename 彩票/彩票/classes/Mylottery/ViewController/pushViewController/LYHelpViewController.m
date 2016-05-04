//
//  LYHelpViewController.m
//  彩票
//
//  Created by 李胜营 on 16/5/3.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYHelpViewController.h"
#import "LYHelpItem.h"
#import "LYSettingItem.h"
#import "LYSettingGroup.h"
#import "LYWebViewController.h"
#import "LYNavigationController.h"

@interface LYHelpViewController ()
/* model array */
@property (strong, nonatomic) NSMutableArray * htmls;

@end

@implementation LYHelpViewController

- (NSMutableArray *)htmls
{
    if (_htmls == nil)
    {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"help.json"ofType:nil];
        
        NSData *data = [NSData dataWithContentsOfFile:path];
        
        NSArray *array = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
        
        _htmls = [NSMutableArray array];
        for (NSDictionary *dic in array)
        {
            LYHelpItem *item = [LYHelpItem helpItemWithDic:dic];
            
            [_htmls addObject:item];
        }
        
    }
    return _htmls;
}
- (void)viewDidLoad {
    [super viewDidLoad];
//    self.title = @"xxxxx";
    
    [self setUpGroup];
    
}
- (void)setUpGroup
{
    NSMutableArray *group = [NSMutableArray array];
    for (LYHelpItem *helpitem in self.htmls)
    {
        LYSettingItem *item = [LYSettingItem itemWithImage:nil title:helpitem.title subtitle:nil];
        
        [group addObject:item];
    
    }
    LYSettingGroup *group1 = [LYSettingGroup groupWithItems:group];
    [self.groups addObject:group1];
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    LYHelpItem *item = self.htmls[indexPath.row];
    LYWebViewController *webVC = [[LYWebViewController alloc] init];
    
    webVC.title = item.title;
    webVC.html = item;
    LYNavigationController *nav = [[LYNavigationController alloc] initWithRootViewController:webVC];
    
    
    [self presentViewController:nav animated:YES completion:nil];
    



}

@end
