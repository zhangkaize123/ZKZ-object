//
//  main.m
//  自己的类如何实现拷贝
//
//  Created by 张凯泽 on 15-1-13.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        User *u1=[[User alloc]init];
//        u1.apple=[[NSMutableArray alloc]initWithObjects:@"apple",@"ipad", nil];
//        NSLog(@"%@",u1.apple);
//        User*u2=[u1 copy];
//________________浅拷贝________________________________
//         NSLog(@"%@",u2.apple);
//        if (u2.apple==u1.apple)
//        {
//            NSLog(@"地址相同");
//            NSLog(@"%p",u2.apple);
//        }
//________________深拷贝___________________________________
//        if (u2.apple==u1.apple)
//        {
//            NSLog(@"地址相同");
//            
//        }
//        NSLog(@"%p",u1.apple);
//        NSLog(@"%p",u2.apple);
//______________如何手动进行内存管理_______________________________
        User *u1=[[User alloc]init];
        NSMutableArray *array=[[[NSMutableArray alloc]initWithObjects:@"apple",@"ipad", nil]autorelease];//1
        [u1 setApple:array];//2
        NSLog(@"%p",array);
        //[array release];
        NSLog(@"u1yinyong%lu",(unsigned long)[u1.apple retainCount]);
        User*u2=[u1 copy];
         NSLog(@"u2引用计数：%lu",(unsigned long)[u2.apple retainCount]);
        NSLog(@",,,,%lu",(unsigned long)[u2 retainCount]);
        
    }
    return 0;
}
