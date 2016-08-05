//
//  Person.m
//  字符串
//
//  Created by 张凯泽 on 15-1-2.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void) show
{
    //[self demo1];
    NSLog(@"被调用");
    //有返回值的
    //[self performSelector:@selector(demo1)];
    //  带参数的
    //[self performSelector:@selector(demo2:) withObject:@"zhang"];
    //带两个参数
    //[self performSelector:@selector(demo3:andWith:) withObject:@"zhagn" withObject:@"sab"];
    
    //perform seletor   多用于延迟
    //此处的延时调用不是说停在这里等2.5秒在执行，而是等于挂一个任务，到这个地方继续执行到时间了在执行这段程序。
    [self performSelector:@selector(demo2:) withObject:@"zhagnkaize" afterDelay:2.5];
    
    
}
-(BOOL)demo1
{
    NSLog(@"demo1");
    return YES;
}
-(void) demo2:(NSString*)_de
{
    NSLog(@"demo2=%@",_de);
}
-(void) demo3:(NSString*)_dem andWith:(NSString*)_dem1
{
    NSLog(@"_dem=%@,_dem1=%@",_dem,_dem1);
}
@end
