//
//  main.m
//  类目练习2
//
//  Created by 张凯泽 on 15-1-7.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Test.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
     //使用类别给NSString增加一个方法，该方法可以返回一个倒置字符串
    
        NSString *string4 = @"abcdef";
        NSString*s=[string4 test];
        NSLog(@"%@",s);
        
    }
    return 0;
}
