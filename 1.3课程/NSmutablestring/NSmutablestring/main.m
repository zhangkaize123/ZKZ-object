//
//  main.m
//  NSmutablestring
//
//  Created by 张凯泽 on 15-1-3.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    //NSMutableArray 继承了NSString字符串类
   // NSMutableString *str1=@"zhnga ";这样做是不对的，@"zhnga "是不可变的
    NSMutableString *str2=[[NSMutableString alloc]initWithFormat:@"zhagnkaize%@",@"ert"];
    
    NSLog(@"%@",str2);
    //插入一个字符串，还是原有字符串

    [str2 insertString:@"ggg" atIndex:2];
    //字符串的删除
    
//    NSRange deleterange= [str2 rangeOfString:@"gg"];
//    [str2 deleteCharactersInRange:deleterange];
//    NSLog(@"%@",str2);
    //字符串的追加
    [str2 appendString:@"zzzzz"];
    NSLog(@"%@",str2);
    //字符串的替换
    NSRange range={5,2};
    [str2 replaceCharactersInRange:range withString:@"ti"];
    NSLog(@"%@",str2);
    str2=[str2 stringByReplacingOccurrencesOfString:@"agad" withString:@"af"];
    
    return 0;
}
