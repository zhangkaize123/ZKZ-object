//
//  main.m
//  Set
//
//  Created by 张凯泽 on 15-1-4.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSString*str1=@"zhangsan";
    NSString*str2=@"lisi";
    NSSet *set1 =[[NSSet alloc]initWithObjects:str1, str2,nil];
    NSSet *set2=[NSSet setWithObjects:str1,str2, nil];
    //  把集合转成数组
    NSArray*arr1=[set1 allObjects];
    //元素个数
    NSInteger a=[set1 count];
    //NSLog(@"%@",[set1 anyObject]);
    
    //_____________________________________________________
    //____________NSSet与Array区别_________________________
    //1.数组是有序的，集合没有顺序
    //2.数组有下标，集合没有下标。
    //3.集合不能存重复对象，数组可以存。
    //
    //
    //
    //
    NSArray *arr=[NSArray arrayWithObjects:str1,str1, nil];
    //NSLog(@"%@",arr.description);
    NSSet *set3=[[NSSet alloc]initWithObjects:str1,str1, nil];
    NSLog(@"%@",set3.description);//存有重复对象时，只能显示一个。
    
    
    
    NSMutableSet*set4=[NSMutableSet setWithObjects:str2, nil];
    return 0;
}
