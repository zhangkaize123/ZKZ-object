//
//  main.m
//  字符串
//
//  Created by 张凯泽 on 15-1-2.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[])
{
    //1.比较两个指针是不是指向同一块区域。
//    NSString*str=[NSString stringWithFormat:@"%d",123];
//    NSString*str1=[str retain];
//    BOOL b=[str isEqual:str1];
//    
//    if (b)
//    {
//        NSLog(@"相同");
//    }
//    else
//    {
//        NSLog(@"不相同");
//    }
    //2.perform selector  多用于延迟调用。
    Person *p1=[[Person alloc]init];
    [p1 show];
    
    
    
    
    
    return 0;
}
