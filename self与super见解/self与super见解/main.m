//
//  main.m
//  self与super见解
//
//  Created by 张凯泽 on 14-12-31.
//  Copyright (c) 2014年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tix.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        
        Tix *tix=[[Tix alloc]init];
        tix.Brade=@"现代";
        tix.Color=@"红色";
        [tix show];//
        [tix speed];
    }
    return 0;
}
