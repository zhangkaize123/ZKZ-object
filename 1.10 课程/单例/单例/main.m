//
//  main.m
//  单例
//
//  Created by 张凯泽 on 15-1-11.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZKZUiapplication.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ZKZUiapplication *b=[[ZKZUiapplication alloc]init];
        [b setName:@"李四"];
        NSLog(@"%@",b);
    
    }
    return 0;
}
