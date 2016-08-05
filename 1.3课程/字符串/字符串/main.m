//
//  main.m
//  字符串
//
//  Created by 张凯泽 on 15-1-2.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSString*str1=@"张三";
    NSString*str2=@"里斯";
    NSString*str3=@"王五";
    //字符串的拼接
    NSString*string1=[[NSString alloc]initWithFormat:@"%@,%@,%@",str1,str2,str3 ];
    NSString*string2=[NSString stringWithFormat:@"%@,%@,%@",str1,str2,str3 ];

    //NSLog(@"string1=%@",string2);
    //字符串的长度
    [string1 length];
    // 判断字符串是否是以某个字符开头  以某个字符结尾
    [string1 hasPrefix:@"z"];
    //结尾
    [string1 hasSuffix:@"z"];
    //把字符串转化成数字
    [string1 intValue];
    //提取某个字符串
    [string1 substringFromIndex:1];
    [string1 substringToIndex:2];
    NSRange range={1,2};
    [string1  substringWithRange:range];
    //
    
    
    
    //_____________________________________________________________
    //字符串的比较  //isEqualToString 是区分大小写的
    //字符串的保存在  。。。常量区。。。。
    //第一种
//    NSString*str4=@"123";// 注意看笔记本上的内存图。。。。。。。
//    NSString*str5=@"123";
//    if (str4 ==str5)
//    {
//        NSLog(@"str与str5的地址一样%p",str4);
//    }
    //第二种
//    NSString*str8=[[NSString alloc]initWithString:@"abc" ];
//    NSString*str9=[[NSString alloc]initWithString:@"abc" ];
//    if (str8==str9)
//    {
//        NSLog(@"str8与str9的地址一样");
//
//    }
     //第一种与第二种情况相同。
    
    
    
    
    //在堆中申请内存地址不一样
    NSString*str6=[[NSString alloc]initWithFormat:@"abc" ];
    NSString*str7=[[NSString alloc]initWithFormat:@"abc"];
    
    if (str6 == str7)//比较的是对象内存地址是否一样
    {
        NSLog(@"str6与str7的地址一样");
    }
    if ([str6 isEqualToString:str7]) //内容是否一样
    {
        NSLog(@"内容一样");
    }
   // _______________________________________________________________
    
//    NSString *str10=@"z";
//    NSString *str11=@"b";
//    
//    CFComparisonResult r=[str10 compare:str11];
//    if (r==NSOrderedAscending)
//    {
//        NSLog(@"str10《str11");
//    }
//
     //4.首字母转成大小写。
    //首字母大写.....
    NSString*str12=@"hell1黑3o";
    NSLog(@"%@",[str12 capitalizedString]);
    
    
    
    //字符串的查找
    
    
    
//    NSString *string=@"www.163.com";
//    
//    NSRange range=[string rangeOfString:@"163.com"];
//    if (range.location!=NSNotFound)
//    {
//        NSLog(@"locaion=%ld,lenth=%ld", range.location,range.length);
//    }
//    
    
    return 0;
}
