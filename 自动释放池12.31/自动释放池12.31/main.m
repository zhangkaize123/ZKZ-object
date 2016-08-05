//
//  main.m
//  自动释放池12.31
//
//  Created by 张凯泽 on 14-12-31.
//  Copyright (c) 2014年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Stedents.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        // 非arc 状态
        //第一种
        //Stedents*zs=[[[Stedents alloc]init]autorelease];
        //或者[zs release];
        
        //第二种
        //使用类的行为创建对象是不需要加autorelease.
        NSString*str=[NSString stringWithFormat:@"%d",123];
        
        //使用对象行为创建对象时需要使用加autorelease
        //NSString*str1=[[NSString alloc]init];
        
        
        
        // 如何让自己的类进行拷贝
//        Stedents *a=[[Stedents alloc]init];
//        Stedents *b=[a copy];
//        [b release];
        
    }
    return 0;
}
