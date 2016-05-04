//
//  LYWebViewController.m
//  彩票
//
//  Created by 李胜营 on 16/5/3.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYWebViewController.h"
#import "LYHelpItem.h"

@interface LYWebViewController ()<UIWebViewDelegate>

@end

@implementation LYWebViewController
- (void)loadView
{
    self.view = [[UIWebView alloc] initWithFrame:LYScreenBounds];


}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"cancle" style:UIBarButtonItemStylePlain target:self action:@selector(dismiss)];
    
    UIWebView *webV = (UIWebView *)self.view;
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:self.html.html withExtension:nil];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    webV.delegate = self;
    [webV loadRequest:request];
    
}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSString *javaStr = [NSString stringWithFormat:@"window.location.href = '#%@';",self.html.ID];
    
    [webView stringByEvaluatingJavaScriptFromString:javaStr];
    

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)dismiss
{
    
    [self dismissViewControllerAnimated:YES completion:nil];

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
