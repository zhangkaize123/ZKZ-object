//
//  main.m
//  数组的内存管理
//
//  Created by 张凯泽 on 15-1-11.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        Dog *d1=[[Dog alloc]init];//1
        Dog *d2=[[Dog alloc]init];//1
        NSMutableArray *array1=[[NSMutableArray alloc]init];
        //1.在放到数组中的元素时，数组会对对象自动加retain(+1)。
        [array1 addObject:d1];//2
        [array1 addObject:d2];//2
        [d1 release];//1
        [d2 release];//1
        //2.数组释放(销毁时)时会对里边的对象自动 release(-1)
        //[array1 release];
        //3.数组移除指定对象时会对里边的对象release
        [array1 removeObjectAtIndex:0];
        //3.数组移除所有对象时会对里边所有的对象release
        //[array1 removeAllObjects];
        
    }
    return 0;
}
