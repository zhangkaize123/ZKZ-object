//
//  Person.m
//  isKindofClass与isMerberofClass的使用
//
//  Created by 张凯泽 on 15-1-2.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)demo1///私有的对象方法，没有声明只是实现了。
{
    NSLog(@"demo1");
}
-(void)show
{
    NSLog(@"可以显示");
}
//对于只有声明的方法而没有实现不能判断出是否有次方法。
@end
