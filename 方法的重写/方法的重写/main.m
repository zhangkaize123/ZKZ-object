//
//  main.m
//  方法的重写
//
//  Created by 张凯泽 on 15-1-1.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rabbit.h"
#import "Animial.h"
int main(int argc, const char * argv[]) {
    //非 arc
    Animial *animial=[[Animial alloc]init];
    [animial sleep];
    Rabbit *rabbit=[[Rabbit alloc]init];
    [rabbit eat];
    
    
    
    
    return 0;
}
