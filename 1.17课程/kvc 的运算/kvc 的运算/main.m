//
//  main.m
//  kvc 的运算
//
//  Created by 张凯泽 on 15-1-17.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "Author.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        Book *b1=[[Book alloc]init];
        Author *a=[[Author alloc]init];
        b1.bookname=@"honggaoliang";
        b1.price=9.9;
        Book *b2=[[Book alloc]init];
        b2.bookname=@"wa";
        b2.price=10;
        NSArray *array=[[NSArray alloc]initWithObjects:b1,b2 ,nil];
        [a setValue:array forKey:@"itembook"];
       //NSArray *arr= [a valueForKey:@"itembook"];
        //NSLog(@"%@",arr);
        //获得书的名字
        NSArray *arr1=[a valueForKeyPath:@"itembook.bookname"];
        NSLog(@"%@",arr1);
        // 获得书的个数
        NSNumber *num1=[a valueForKeyPath:@"itembook.@count"];
        NSLog(@"%@",num1);
        //获得书价格总数。
        NSNumber *num2=[a valueForKeyPath:@"itembook.@sum.price"];
        NSLog(@"%@",num2);
        //获得书价平均值
        NSNumber *num3=[a valueForKeyPath:@"itembook.@avg.price"];
        NSLog(@"%@",num3);
        //获得书价最大值。
        NSNumber *num4=[a valueForKeyPath:@"itembook.@max.price"];
        NSLog(@"%@",num4);
        
    }
    return 0;
}
