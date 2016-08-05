//
//  Person.m
//  循环引用
//
//  Created by 张凯泽 on 15-1-13.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "Person.h"
#import "Dog.h"
@implementation Person
@synthesize dog;

- (void)dealloc
{
    
    NSLog(@"person is dealloc");
    [dog release];
    [super dealloc];
}
@end
