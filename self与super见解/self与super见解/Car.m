//
//  Car.m
//  self与super见解
//
//  Created by 张凯泽 on 14-12-31.
//  Copyright (c) 2014年 wyzc. All rights reserved.
//

#import "Car.h"

@implementation Car
-(void)setBrade:(NSString*)_brade
{
    brade=_brade;
}
-(NSString*)Brade
{
    return brade;
}
-(void)setColor:(NSString*)_color
{
    color=_color;
}
-(NSString*)Color
{
    return color;
}
-(void)brake
{
    NSLog(@"%@汽车刹车了",color);
}
-(void)speed
{
    NSLog(@"车速为100");
}
@end
