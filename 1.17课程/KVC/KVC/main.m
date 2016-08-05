//
//  main.m
//  KVC
//
//  Created by 张凯泽 on 15-1-17.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        //KVC-------->KeyValue coding
        Person *p=[[Person alloc]init];
        //通过kvc 设值
        [p setValue:@"Jack" forKey:@"name"];//key是对象的属性名
       // NSLog(@"%@",p);
    //通过kvc 取值
        [p valueForKey:@"name"];
        //NSLog(@"%@",p);
     //属性的基本数据类型
        [p setValue:@12 forKey:@"age"];//基本数据类型是要先对int值封包，在输出时自动解包。
        NSNumber *num=[p valueForKey:@"age"];
        NSLog(@"%@",p);
        
        
        
        Dog *d1=[[Dog alloc]init];
        NSLog(@"%ld",d1.retainCount);
        [p setValue:d1 forKey:@"dog"];//通过kvc设值时引用计数retain
        NSLog(@"%ld",d1.retainCount);
        /*
         kev设值时：如果有set方法那么先调用set方法。
         get值时也是同样道理。
         
         */
        
        
        
        
    }
    return 0;
}
