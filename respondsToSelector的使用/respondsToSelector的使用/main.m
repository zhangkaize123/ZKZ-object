//
//  main.m
//  respondsToSelector的使用
//
//  Created by 张凯泽 on 15-1-2.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    Person *person=[[Person alloc]init];
//    if([person respondsToSelector:@selector(demo1)])
//    {
//        [person performSelector:@selector(demo1)];
//    }
    if ([person respondsToSelector:@selector(show)])
    {
        [person performSelector:@selector(show)];
    }
//    if ([person respondsToSelector:@selector(isKindOfClass:)])
//    {
//        NSLog(@"有此方法");
//    }
    
    
    
    return 0;
}
