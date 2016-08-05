//
//  Dog.m
//  内存管理1.11
//
//  Created by 张凯泽 on 15-1-11.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "Dog.h"

@implementation Dog
-(void)setName:(NSString*)_name
{
    name=_name;
}
-(NSString*)name
{
    return name;
}
- (void)dealloc
{
    NSLog(@"dog dealloc");
    [super dealloc];
}
@end
