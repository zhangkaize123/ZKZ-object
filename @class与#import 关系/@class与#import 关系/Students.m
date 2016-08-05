//
//  Students.m
//  @class与#import 关系
//
//  Created by 张凯泽 on 15-1-1.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "Students.h"

@implementation Students
-(void)setName:(NSString*)_name
{
    
    if(name!=_name)
    {
        [name release];
        name=[_name retain];
    }
}
-(NSString*)name
{
    return name;
}
-(void)work
{
    NSLog(@"学生在学习！");
}
@end
