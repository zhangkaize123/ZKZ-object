//
//  Car.m
//  继承12.30
//
//  Created by 张凯泽 on 14-12-30.
//  Copyright (c) 2014年 wyzc. All rights reserved.
//

#import "Car.h"

@implementation Car
-(void)setColor:(NSString*)_color
{
    color=_color;
}
-(void)brake
{
    NSLog(@"刹车了");
}

@end
