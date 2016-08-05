//
//  main.m
//  NSDate日期的格式化
//
//  Created by 张凯泽 on 15-1-6.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSDate *d1=[NSDate date];
        NSLog(@"d1=%@",d1);
        //d1=2015-01-06 14:00:24 +0000
        //2015年01月06日14时00分24秒
        //z设置格式化日期
        NSDateFormatter *formatd1=[[NSDateFormatter alloc]init];
        [formatd1 setDateFormat:@"yyyy年mm月dd日hh时mm分ss秒"];
        NSString *str=[formatd1 stringFromDate:d1];
        NSLog(@"str=%@",str);
        
        
        
    }
    return 0;
}
