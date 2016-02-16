//
//  SecondVC.h
//  ScrollViewPanView
//
//  Created by 秦光义 on 16/1/20.
//  Copyright © 2016年 QGY. All rights reserved.
//

#import "ViewController.h"
typedef NS_ENUM(NSInteger, UIRecieveType){
    lisit1,
    lisit2,
};
typedef NS_OPTIONS(NSInteger, UIRecieveName){
    first,
    second,
};
@interface SecondVC : ViewController{
    UIView *buffetView;
}
@property(nonatomic,assign)UIRecieveType bufferType;
@property(nonatomic,assign)UIRecieveName mannulType;
@property (nonatomic,strong) NSString *myName;
-(NSString *)ThingReciveGetBuffer:(UIRecieveName )type1 andThing:(UIRecieveType )type2;


@end
