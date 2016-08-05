//
//  main.m
//  manager_管理员
//
//  Created by 张凯泽 on 14-12-29.
//  Copyright (c) 2014年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Manager.h"
int main(int argc, const char * argv[])
{
    Manager*manager=[[Manager alloc]init];
    [manager setPassword:9999];
    [manager setManger1:@"admin"];
    BOOL b=[manager changmanager];
    if (b)
    {
        NSLog(@"正确");
    }
    
    
    return 0;
}
