//
//  Tix.m
//  self与super见解
//
//  Created by 张凯泽 on 14-12-31.
//  Copyright (c) 2014年 wyzc. All rights reserved.
//

#import "Tix.h"

@implementation Tix
-(void)show
{
    [super brake];//父类调用方法
    //[self brake];//调用父类的方法
    NSLog(@"%@汽车展示",brade);
}
-(void)speed//方法的重写1.必须是继承了父类的方法  2方法名必须一致
{
    [super speed];//可以使用父类调用父类方法
    NSLog(@"chesuwei 200");
    //[self speed];//不可以用self调用形成死循环。
}
@end
