//
//  main.m
//  d代理设计模式
//
//  Created by 张凯泽 on 15-1-10.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZKZNurse.h"
#import "ZKZChildren.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ZKZChildren *chi=[[ZKZChildren alloc]init];
        ZKZNurse *nur=[[ZKZNurse alloc]init];
        [chi setNurse:nur];
        [chi say];
        
        
    
    }
    return 0;
}
