//
//  main.m
//  NSdate 类
//
//  Created by 张凯泽 on 15-1-6.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        //创建时间类
        //创建当前日期对象，显示当前日期
        NSDate *date1=[NSDate date];
        NSDate *date2=[[NSDate alloc]init];
        NSLog(@"date2=%@",date2);
        //在当前时间点的基础上累加一个数值之后的日期，单位是秒。
        // 明天
        NSDate *date3=[NSDate dateWithTimeIntervalSinceNow:24*60*60];
        NSLog(@"date3=%@",date3);
        // 昨天
        NSDate *date4=[NSDate dateWithTimeIntervalSinceNow:-24*60*60];
        NSLog(@"date4=%@",date4);
        //______________________________________
        //日期的时间戳：某一日期到1970秒数的大小。
        NSDate *date5=[NSDate dateWithTimeIntervalSince1970:991000];
        NSLog(@"date5=%@",date5);
        
        //获取日期的时间戳
        NSDate *d1=[[NSDate alloc]init];
        
        NSTimeInterval  time1970=[d1 timeIntervalSince1970];
        NSLog(@"%lf",time1970);
        NSTimeInterval t1=[date4 timeIntervalSinceNow];
        NSLog(@"%lf",t1);
        //__________________________________________
        //日期的比较
        //通过比较时间戳
        if ([date3 timeIntervalSince1970]>[date4 timeIntervalSince1970])
        {
            NSLog(@"date3大%lf",[date3 timeIntervalSince1970]);
        }
        else
        {
            NSLog(@"date4大");
        }
        //compare
        NSComparisonResult com=[date4 compare:date4];
    }
    return 0;
}
