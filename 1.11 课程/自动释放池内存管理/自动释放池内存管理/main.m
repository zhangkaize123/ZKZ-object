//
//  main.m
//  自动释放池内存管理
//
//  Created by 张凯泽 on 15-1-11.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
int main(int argc, const char * argv[])
{
    //自动释放池创建方法1:
    @autoreleasepool
    {//等价与 NSAutoreleasePool *pool=[[NSAutoreleasePool alloc]init];
        
        
     }//等价于[pool release];
//方法2
//   NSAutoreleasePool *pool=[[NSAutoreleasePool alloc]init];
//    Dog *dog1=[[Dog alloc]init];//1
//    [dog1 retain];
//    [dog1 autorelease];// 放到自动释放池中，而不是release。
//    [pool release];//当自动释放池销毁时，会对池子里的每个对象发送一个release方法,此时的dog 引用计数为1,所以自动释放池只是针对你创建时的 alloc release，至于其他还是需要你手动释放的。
//    [dog1 release];
//   //2.把狗放到数组中去。
    NSAutoreleasePool *pool=[[NSAutoreleasePool alloc]init];
    Dog *dog1=[[Dog alloc]init];//1
    NSArray *array=[[NSArray alloc]initWithObjects:dog1, nil];//2
    [dog1 release];//1
    //[dog1 retain];//2
    [dog1 autorelease];
    [array autorelease];
    [pool release];//0
    //[array release];//数组释放时会自动发送release消息，此时的dog对象已经销毁，所以报错//如果加上[dog1 retain];就没有问题。
/*
 
 典型错误：
 -(NSString*)getinfo
 {
 NSString *info=[[NSString alloc]initWithFormat:@"%@,%d",name,age];
 return [info autorelease];
 错误解决方法：
 NSString *s1=[person getinfo];
 [s1 release];
 
 修改方法：
 NSAutoreleasePool *pool=[[NSAutoreleasePool alloc]init];
 NSString *s=[person getinfo];
 [pool release];
 }
 
 
 */
    
    
    
    
    
    
    return 0;
}
