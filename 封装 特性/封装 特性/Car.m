//
//  Car.m
//  封装 特性
//
//  Created by 张凯泽 on 14-12-30.
//  Copyright (c) 2014年 wyzc. All rights reserved.
//

#import "Car.h"

@implementation Car
-(void)setCapacity:(float)_capacity
{
    if (_capacity<0.5)//可以对外部传过来的数据进行有效验证。
    {
        NSLog(@"不正确");
        return;
    }
    capacity= _capacity;
}
@end
