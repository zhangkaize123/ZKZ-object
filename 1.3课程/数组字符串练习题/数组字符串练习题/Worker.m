//
//  Worker.m
//  数组字符串练习题
//
//  Created by 张凯泽 on 15-1-4.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "Worker.h"

@implementation Worker
-(void)setName:(NSString*)_name
{
    name=_name;
}
-(void)setAge:(int)_age
{
    age=_age;
}
-(void)setSalary:(int)_salary
{
    salary=_salary;
}
-(NSString*)name
{
    return name;
}
-(int)age
{
    return age;
}

-(int)salary
{
    return salary;
}
//-(NSString*)description
//{
//    NSString* str=[[NSString alloc]initWithFormat:@"xingming %@ nianling %dgongzi %d",name,age,salary ];
//    return str;
//}
-(void)work
{
    NSLog(@"%@%d在努力工作",name,age);
}
@end
