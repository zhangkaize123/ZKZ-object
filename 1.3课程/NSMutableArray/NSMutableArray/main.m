//
//  main.m
//  NSMutableArray
//
//  Created by 张凯泽 on 15-1-3.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    
    //_____________可变数组的创建____________________
    NSString*s1=@"zhangsna";
    NSString*s2=@"li";
    NSString*s3=@"wangwu";
//    NSMutableArray *arr4=@[]//。。。。。。。。。。。。。。。。。。错误。。。//不能这样创建因为这样就创建了不可变数组。
    
    
    NSMutableArray *arr1=[NSMutableArray arrayWithObjects:s1,s2,nil];
    NSMutableArray *arr2= [ [NSMutableArray alloc]initWithObjects:s1,s2,s3 ,nil];
   // －－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－
    NSMutableArray *arr3=[[NSMutableArray alloc]initWithCapacity:3];
    NSMutableArray *arr4=[NSMutableArray arrayWithCapacity:3];
    //创建数组时开辟3个空间用于存储元素，当存储的元素超过空间个数时，会越界。
    //___________________1.添加元素__________
    
    [arr3 addObject:s1];
    [arr3 addObject:s2];
    [arr3 addObject:s3];
    
    [arr4 addObjectsFromArray:arr3];//把arr3里边的元素copy出来放到arr4里去, 但是arr3 里面的元素还在没有消失。
    //______________________________________________________________
    //如果想变成二维数组可以用以下方法。
//    [arr4 addObject:arr3];
    
//    NSLog(@"%@",arr4);
    
    
    
    //___________________2.插入元素____________________________
//    [arr3 insertObject:@"zhaoqi" atIndex:0];
//    NSLog(@"%@",arr3);
    //___________________3.替换元素______________________________
    [arr3 replaceObjectAtIndex:0 withObject:@"tianqi"];
        NSLog(@"%@",arr3);
    //___________________4.互换元素_位置_____________________________
    [arr3 exchangeObjectAtIndex:0 withObjectAtIndex:1];
    NSLog(@"%@",arr3);
    //___________________5.删除元素______________________________
      //1.根据下标删除
//    [arr3 removeObjectAtIndex:1];
//    NSLog(@"%@",arr3);
     //2.删除最后对象
    [arr3 removeLastObject];
    //删除指定对象
    [arr3 removeObject:@""];
    //3.删除所有对象
    [arr3 removeAllObjects];
    return 0;
}
