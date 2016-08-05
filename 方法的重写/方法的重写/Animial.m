//
//  Animial.m
//  方法的重写
//
//  Created by 张凯泽 on 15-1-1.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "Animial.h"

@implementation Animial
-(void)eat
{
    NSLog(@"动物吃东西");
}
-(void)sleep
{
     NSLog(@"fada%@",self.class );//在一个类中如果同时有self.class和super.class，那么他们都是指向的同一个类，就是在这个类。
 NSLog(@"fada%@",super.class );
    NSLog(@"动物睡觉");
}

@end
