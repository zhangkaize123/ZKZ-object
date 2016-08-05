//
//  Rabbit.m
//  方法的重写
//
//  Created by 张凯泽 on 15-1-1.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "Rabbit.h"

@implementation Rabbit

-(void)eat
{
    NSLog(@"self=%@",[self class]);//暂时还是不懂
        NSLog(@"super=%@",super.class);
    NSLog(@"兔子吃草");
}


@end
