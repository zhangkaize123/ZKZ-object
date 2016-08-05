//
//  Dog.m
//  循环引用
//
//  Created by 张凯泽 on 15-1-13.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "Dog.h"
#import "Person.h"
@implementation Dog
@synthesize person;
- (void)dealloc
{
    NSLog(@"dog is dealloc");
    //[person release];
    [super dealloc];
}
@end
