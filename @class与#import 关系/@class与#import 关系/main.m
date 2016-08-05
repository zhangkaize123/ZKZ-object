//
//  main.m
//  @class与#import 关系
//
//  Created by 张凯泽 on 15-1-1.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Classes.h"
#import "Students.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    
        Classes *cls=[[Classes alloc]init];
        //Students *stuents=[[Students alloc]init];
        //stuents.Name=@"asfegsdfgdsb";
        //cls.Stu=stuents;
        //[cls.Stu work];
        [cls show];
        //NSLog(@"%ld",[Students retainCount]);
    
    }
    return 0;
}
