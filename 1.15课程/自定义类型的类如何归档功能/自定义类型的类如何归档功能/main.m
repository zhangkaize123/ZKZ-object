//
//  main.m
//  自定义类型的类如何归档功能
//
//  Created by 张凯泽 on 15-1-15.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Person *p=[[Person alloc]init];
        p.name=@"zs";
//        //创建文件路径。
//        NSString *filpath=[NSHomeDirectory()stringByAppendingPathComponent:@"abd"];
//        //归档
//       BOOL b= [NSKeyedArchiver archiveRootObject:p toFile:@"fas"];
//
//        
//        //[NSKeyedArchiver archiveRootObject:p toFile:@"abd"];
        
//____________________________________________________
       //解归档
         NSString *filpath=[NSHomeDirectory()stringByAppendingPathComponent:@"abd"];
       NSString *name= [NSKeyedUnarchiver unarchiveObjectWithFile:filpath];
        
        
//__________________________________________
        //把对象放到数组也可以归档。
        
        
    }
    return 0;
}
