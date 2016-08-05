//
//  main.m
//  NSMutabledictionary
//
//  Created by 张凯泽 on 15-1-5.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    // 创建
    NSArray *arr1=[[NSArray   alloc]initWithObjects:@"zhangsan",@"zhangfei", nil];
    NSArray *arr2=[NSArray arrayWithObjects:@"lisi",@"liping", nil];
    NSDictionary *dic1=[NSDictionary dictionaryWithObjectsAndKeys:arr1,@"zhang",arr2,@"li", nil];
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc]initWithCapacity:3];
    //1.添加元素
    [dic setValue:arr1 forKey:@"zhang"];
    [dic setValue:arr2 forKey:@"li"];
    
   // NSLog(@"%@",dic);
    //2.把字典的元素添加到另一个字典中去
    //[dic addEntriesFromDictionary:dic1];
    //相同的key不能添加到字典中去
    //[dic1 setValue:@"zhangsan" forKey:@"zhang"];//相同的key会把原来的值覆盖掉。
    //3.删除
    //i删除所有元素。
    //[dic removeAllObjects];
    //ii根据key删除对应的元素
    //[dic removeObjectForKey:@"zhang"];
    //iii根据多个key删除对应的多个元素。
//    NSArray *arr5=[NSArray arrayWithObjects:@"zhang",@"li", nil];
//    [dic removeObjectsForKeys:arr5];
//    NSLog(@"%@",dic);
    //4便利字典
    //通过key去寻找value
    //i快速便利
    for (NSString*str in [dic allKeys])
    {
        id arr=[dic1 objectForKey:str];
        NSLog(@"key=%@,value=%@",str,arr);
    }
    //ii普通便利
//    NSArray* array=[dic allKeys];
//    for (int i=0; i<array.count; i++)
//    {
//        NSArray*array1=[dic objectForKey:[array objectAtIndex:i]];
//        NSLog(@"key=%@,value=%@",[array objectAtIndex:i],array1);
//    }
    
    //字典中的元素是无序的。
    
    return 0;
}
