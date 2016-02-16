//
//  FourVCViewController.m
//  ScrollViewPanView
//
//  Created by 秦光义 on 16/1/24.
//  Copyright © 2016年 QGY. All rights reserved.
//

#import "FourVCViewController.h"

@interface FourVCViewController ()
@property (weak, nonatomic) IBOutlet UILabel *countLabel;

@end

@implementation FourVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"统计功能";
    NSString *str = [self ThingReciveGetBuffer:first andThing:lisit1];
    NSLog(@"%@",str);
    _countLabel.text = [NSString stringWithFormat:@"我打开了这个视图%@次了",[[NSUserDefaults standardUserDefaults] valueForKey:@"key"]];
    
    
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
