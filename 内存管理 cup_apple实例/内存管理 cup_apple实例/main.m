//
//  main.m
//  内存管理 cup_apple实例
//
//  Created by 张凯泽 on 14-12-30.
//  Copyright (c) 2014年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Comper.h"
#import "Cpu.h"
#import "Itel.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool
    {

        Comper*apple=[[Comper alloc]init];
        Cpu*cpu_power=[[Cpu alloc]init];
        Itel*itel=[[Itel alloc]init];
        [apple setCpu:cpu_power];
        NSLog(@"%ld",[cpu_power retainCount]);
        [cpu_power release];
        NSLog(@"%ld",[cpu_power retainCount]);
        [apple setCpu:itel];
       
        [itel release];
        NSLog(@"%ld",[cpu_power retainCount]);

        NSLog(@"%ld",[itel retainCount]);
    }
    return 0;
}
