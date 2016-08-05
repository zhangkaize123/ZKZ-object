//
//  main.m
//  NSdictionary
//
//  Created by 张凯泽 on 15-1-4.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    //___________不可变字典____________________________
    //1.dictionary   的创建     key:是字符串，value：数组
    NSArray *arr1=[[NSArray   alloc]initWithObjects:@"zhangsan",@"zhangfei", nil];
    NSArray *arr2=[NSArray arrayWithObjects:@"lisi",@"liping", nil];
    //key: @"zhang"   value:arr1
    //key:@"li"        value:arr2
    NSDictionary *dic=[[NSDictionary alloc]initWithObjectsAndKeys:arr1,@"zhang",arr2,@"li",nil];
    NSDictionary *dic1= [NSDictionary dictionaryWithObjectsAndKeys:arr1,@"zhang",arr2,@"li", nil];
    //NSLog(@"%@",dic.description);
    //2.dictionary 的个数
    NSUInteger count=dic.count;
    //NSLog(@"%ld",count);
    //3.获取dictionary中所有的key
    NSArray *allkeys=dic.allKeys;
    //NSLog(@"%@",allkeys);
    //4.获取dictionary中所有的value
    NSArray *allvalue=dic.allValues;
    NSLog(@"%@",allvalue);
    //5.通过key 找value的值。
    NSArray *arr4=[dic1 objectForKey:@"zhang"];
    NSLog(@"arr4=%@",arr4);
//_______________________优化______________________________________
    
    //Arr[0]
    NSDictionary *dic2=@{@"zhang":@"aaaaa",@"li":@"bbbbb"};
    NSString*str5=[dic2 valueForKey:@"zhang"];
    NSLog(@"..%@...",str5);
    NSArray *a=dic2[@"zhang" ];
    NSLog(@"dic2=%@",a);
    
    return 0;
}
