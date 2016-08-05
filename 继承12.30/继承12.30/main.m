//
//  main.m
//  继承12.30
//
//  Created by 张凯泽 on 14-12-30.
//  Copyright (c) 2014年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "tex.h"//只需要导入你需要的头文件，因为你不需要Car所有不需要导入。
int main(int argc, const char * argv[]) {

    tex*tex1=[[tex alloc]init];
    [tex1 setColor:@"红色"];
    [tex1 show];
    [tex1 brake];
    //[tex1 age];
    NSLog(@"%@",tex1 .age);
    return 0;
}
