//
//  Comper.m
//  内存管理 cup_apple实例
//
//  Created by 张凯泽 on 14-12-30.
//  Copyright (c) 2014年 wyzc. All rights reserved.
//

#import "Comper.h"

@implementation Comper
-(void)setCpu:(id)_cpu
{
    
    [cpu release];
    cpu=[_cpu retain];
    NSLog(@"程序被执行");
}
@end
