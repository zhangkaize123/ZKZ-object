//
//  Stedents.m
//  自动释放池12.31
//
//  Created by 张凯泽 on 14-12-31.
//  Copyright (c) 2014年 wyzc. All rights reserved.
//

#import "Stedents.h"

@implementation Stedents
@synthesize name;
-(id)copyWithZone:(NSZone *)zone
{
    Stedents *s=[[[self class]alloc]init];
    s.name=name;
    return s;
}








-(void)dealloc
{
    [super dealloc];
    NSLog(@"被调用");
}
@end
