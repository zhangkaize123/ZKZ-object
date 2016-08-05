//
//  main.m
//  类方法的内存管理
//
//  Created by 张凯泽 on 15-1-12.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
//1._______________________________________________
    @autoreleasepool {
        //用类方法创建对象，在创建是都加入到自动释放池中
        Person *per=[Person personWithName:@"jeck"];
        //[per release];//根据黄金法则有release,必须有alloc，或者retain,现在根本没有。
        NSLog(@"%@",per.name);
        //都不需要加release。
        NSArray *arr=[NSArray array];
        NSString *str=[NSString string];
    
        
 //2._____________都不需要加release，都已经加入到自动释放池____________
        
        
        NSArray *array=@[];//也不需要加release，根据黄金法则有release,必须有alloc，或者retain,现在根本没有。
        NSString *string=@"";
        NSNumber *num=@100;
        NSDictionary *dic=@{};
        
        
        
    
    }
    return 0;
}
