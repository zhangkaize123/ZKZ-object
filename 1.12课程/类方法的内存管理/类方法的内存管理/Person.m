//
//  Person.m
//  类方法的内存管理
//
//  Created by 张凯泽 on 15-1-12.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "Person.h"

@implementation Person
+(instancetype)personWithName:(NSString*)_name
{//此时的self是本类---->Person，不是对象
    Person *person=[[self alloc]init];//等价于[[Person alloc]init];
    person->name=_name;//此时的name是私有的，
    return [person autorelease] ;
}
-(void)dealloc
{
    NSLog(@"被销毁");
    [super dealloc];
}
-(NSString*)name
{
    return name;
}
@end
