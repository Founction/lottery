//
//  LYNewFeatureCollectionViewController.m
//  彩票
//
//  Created by 李胜营 on 16/4/27.
//  Copyright (c) 2016年 dasheng. All rights reserved.
//

#import "LYNewFeatureCollectionViewController.h"
#import "LYNewFeatureViewCell.h"

@interface LYNewFeatureCollectionViewController ()

/* 引导页 */
@property (weak, nonatomic) UIImageView * guide;
@property (weak, nonatomic) UIImageView * largeLable;

/* <#信息#> */
@property (weak, nonatomic) UIImageView * guideSmallView;

/* 纪录动画效果的上次坐标 */
@property (assign, nonatomic) CGFloat lastOffsetX;
@end

@implementation LYNewFeatureCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (instancetype)init
{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = LYScreenBounds.size;
    layout.minimumLineSpacing = 0;
    layout.minimumInteritemSpacing = 0;
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    
    return [super initWithCollectionViewLayout:layout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.collectionView.backgroundColor = [UIColor redColor];
    
    self.collectionView.showsHorizontalScrollIndicator = NO;
    
    self.collectionView.bounces = NO;
    
    self.collectionView.pagingEnabled = YES;
    
    [self.collectionView registerClass:[LYNewFeatureViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    [self setUpAllChildView];
    
    // Do any additional setup after loading the view.
}
- (void)setUpAllChildView
{
    UIImageView *guide = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guide1"]];
    guide.centerX = self.view.centerX;
    self.guide = guide;
    [self.collectionView addSubview:_guide];
    
    UIImageView *guideLine = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideLine"]];
    guideLine.x -= 170;
    [self.collectionView addSubview:guideLine];
    
    UIImageView *largeLable = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideLargeText1"]];
    largeLable.centerX = self.view.centerX;
    largeLable.centerY = self.view.height * 0.7;
    self.largeLable = largeLable;
    [self.collectionView addSubview:_largeLable];
    
    
    // smallText
    UIImageView *smallText = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideSmallText1"]];
    _guideSmallView = smallText;
    smallText.centerX = self.view.centerX;
    smallText.centerY = self.view.height * 0.8;
    [self.collectionView addSubview:smallText];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark <UIScrollViewDelegate>

//减速完成，也就是当完全切换的时候
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    //1.计算偏移量，只会一个个的偏移，向右滚动的时候contentoffset.x。向左的时候，取负。
    CGFloat curOffsetX= scrollView.contentOffset.x;
    CGFloat offsetX = curOffsetX - _lastOffsetX;
    //2.先偏移出两个，为了从能够向右滑动的时候，图片从右进来，向左滑动的时候，图片从左进来。
    self.guide.x += 2 * offsetX;
    self.guideSmallView.x += 2 * offsetX;
    self.largeLable.x += 2 * offsetX;
    //3.再回来一个偏移量。
    [UIView animateWithDuration:0.2 animations:^{
        
        self.guide.x -= offsetX;
        self.guideSmallView.x -= offsetX;
        self.largeLable.x -= offsetX;
    }];
    //4.重新设置image，用最少的imageview，循环利用
    int page = scrollView.contentOffset.x / self.view.width + 1;
    
    self.guide.image = [UIImage imageNamed:[NSString stringWithFormat:@"guide%d",page]];
    
    self.lastOffsetX = curOffsetX;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 4;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    LYNewFeatureViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    NSString *imageName = [NSString stringWithFormat:@"guide%ldBackground",indexPath.item + 1];
    UIImage *image = [UIImage imageNamed:imageName];
    
    cell.image = image;
    
    [cell hideStartButton:indexPath count:4];
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
