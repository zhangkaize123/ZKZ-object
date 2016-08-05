//
//  main.m
//  类别练习题
//
//  Created by 张凯泽 on 15-1-6.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "ZKZTeststring.h"
#import "NSString+testemail.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
//        ZKZTeststring *str=[[ZKZTeststring alloc]  initWithFormat:@"www.zkz"];
//        BOOL b=[str test];
//        if (b)
//        {
//            NSLog(@"合法");
//        }
//        else
//        {
//            NSLog(@"非法");
//        }
        //可以这么做但是foundation框架中string ,array,dictionary,,,是不可以继承的。
//
        
        NSString*str=[[NSString alloc]initWithFormat:@"www.zkz.com"];
        
        BOOL b=[str test];
        if (b)
        {
            NSLog(@"合法");
        }
        else
        {
            NSLog(@"非法");
        }
        
    }
    return 0;
}
