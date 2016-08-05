//
//  ZKZTeststring.m
//  类别练习题
//
//  Created by 张凯泽 on 15-1-6.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "ZKZTeststring.h"

@implementation ZKZTeststring
-(BOOL)test
{
    NSRange range=[self rangeOfString:@"www"];
    if (range.location!=NSNotFound)
    {
        return YES;
    }
    return NO;
}

@end
