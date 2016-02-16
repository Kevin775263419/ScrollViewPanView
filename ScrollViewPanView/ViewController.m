//
//  ViewController.m
//  ScrollViewPanView
//
//  Created by 秦光义 on 16/1/20.
//  Copyright © 2016年 QGY. All rights reserved.
//

#import "ViewController.h"
#import "FirstVC.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *backView;
@property (weak, nonatomic) IBOutlet UIView *firstView;
@property (weak, nonatomic) IBOutlet UIView *secondView;
@property (weak, nonatomic) IBOutlet UIView *thirdView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segMentCon;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)]) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
        self.navigationController.navigationBar.translucent = NO;
        
    }
    // Do any additional setup after loading the view, typically from a nib.
    _scrollView.backgroundColor = [UIColor blueColor];
    _scrollView.delegate = self;
    _scrollView.pagingEnabled = YES;
}
- (IBAction)changeValueGet:(UISegmentedControl *)sender {
    float with = CGRectGetWidth(self.view.frame);
    [_scrollView setContentOffset:CGPointMake(sender.selectedSegmentIndex *with, 0) animated:YES];
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    float with = CGRectGetWidth(self.view.frame);
    NSInteger index = scrollView.contentOffset.x/with;
    _segMentCon.selectedSegmentIndex = index;

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
