//
//  main.m
//  循环引用
//
//  Created by 张凯泽 on 15-1-13.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        Person *p=[[Person alloc]init];//1
        Dog *d=[[Dog alloc]init];
        p.dog=d;
        d.person=p;//1
        NSLog(@"%lu",(unsigned long)[d.person retainCount]);
        [p release];
        [d release];
        //最后的一个引用计数1无法销毁，所以只能去掉其中一个引用，让其中一个strong 变成assign.
    
    }
    return 0;
}
