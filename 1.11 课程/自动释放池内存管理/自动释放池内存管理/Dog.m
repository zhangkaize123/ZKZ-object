//
//  Dog.m
//  自动释放池内存管理
//
//  Created by 张凯泽 on 15-1-11.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "Dog.h"

@implementation Dog
- (void)dealloc
{
    NSLog(@"dog dealloc");
    [super dealloc];
}
@end
