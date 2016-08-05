//
//  Classes.m
//  @class与#import 关系
//
//  Created by 张凯泽 on 15-1-1.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "Classes.h"
#import "Students.h"//如果想使用 "Students.h里边的方法或者属性可以在.m文件里边导入#import "Students.h"。
@implementation Classes

- (instancetype)init
{
    self = [super init];
    if (self!=nil)
    {
            }
    return self;
}
//-(void)setStu:(Students*)_stu
//{
//    if (stu!=_stu)
//    {
//        [stu release];
//        stu=[_stu retain];
//    }
//    
//}
//
//-(Students*)Stu
//{
//    return stu;
//}

-(void)show
{
    //Students *stu=[[Students alloc]init];
    Students *s1=[[Students alloc]init];
    s1.Name=@"hhhhhh";

    
    NSLog(@"此方法被调用%@",s1.name);
}
    


@end
