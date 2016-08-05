//
//  NSString+testemail.m
//  类别练习题
//
//  Created by 张凯泽 on 15-1-7.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "NSString+testemail.h"

@implementation NSString (testemail)
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
