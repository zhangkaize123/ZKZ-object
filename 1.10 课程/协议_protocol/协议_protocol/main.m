//
//  main.m
//  协议_protocol
//
//  Created by 张凯泽 on 15-1-10.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZKZStudent.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        ZKZStudent *zs=[[ZKZStudent alloc]init];
        //[zs say];//
        [zs finish];//协议方法。
        if ([zs respondsToSelector:@selector(wear)])//最好对可选择的协议方法进行判定防止，该方法没有在实现文件中实现，出现错误。
        {
            [zs wear];
        }
        else
        {
            NSLog(@"没有wear方法");
        }
        
    
    }
    return 0;
}
