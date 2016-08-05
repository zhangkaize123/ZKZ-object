//
//  main.m
//  isKindofClass与isMerberofClass的使用
//
//  Created by 张凯泽 on 15-1-2.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    Person *p1=[[Person alloc]init];
//    BOOL b=[p1 isMemberOfClass:[Person class]];
//    if (b)
//    {
//        NSLog(@"p1 是person的类创建的");
//    }
    
   //____________________________________________________________
    
    //判断某一个对象是否是某类的子类包括本类
    Person *b1=[[Person alloc]init];
//    BOOL b1=[p1 isKindOfClass:[NSObject class] ];
//    if (b1)
//    {
//        NSLog(@"b1是nsobject 的子类");
//    }
//    
    Person *b2=[[Person alloc]init];
    if ([b2 isKindOfClass:[Person class]])
    {
        NSLog(@"person 类创建的的");
    }
    
    
    
    return 0;
}
