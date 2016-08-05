//
//  main.m
//  深浅拷贝
//
//  Created by 张凯泽 on 15-1-13.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
//        NSMutableArray *arrary=[[NSMutableArray alloc]init];
//        
//        for (int i=0; i<2; i++)
//        {
//            Person *p=[[Person alloc]init];
//            [arrary addObject:p];
//            [p release];
//        }
//        for (Person *p1 in arrary)
//        {
//            NSLog(@"%lu",(unsigned long)[p1 retainCount]);
//            NSLog(@"%@",p1);
//        }
//        NSArray *arr1=[arrary copy];
//        
//        for (Person *p1 in arr1)
//        {
//            NSLog(@"%lu",(unsigned long)[p1 retainCount]);
//            NSLog(@"%@",p1);
//        }
        //数组的拷贝是浅拷贝。
  //因为以上实行了copy后retain了一次，引用计数加一，是浅拷贝
//_--------------------------------------------------------------------
    /*
     Foundation框架中可复制的对象，当我们copy的是一个不可变对象
     时它的作用相当于retain.不是真正的
     //        NSString *s=[[NSString alloc]initWithFormat:@"%d",123];
     //        NSLog(@"retain count=%lu",(unsigned long)[s retainCount]);
     //        NSLog(@"%@",s);
     //        NSString *s1=[s copy];
     //        NSLog(@"retain count=%lu",(unsigned long)[s retainCount]);
     //        NSLog(@"retain count=%lu",(unsigned long)[s1 retainCount]);
     //
     */
        //不可变对象＋copy   等价与retain
        //mutableCopy 拷贝方法，不管是什么时候都是真正的拷贝。
        NSArray *arr=[NSArray array];//1
        

        NSArray *arr2=[arr mutableCopy];//2当使用mutableCopy 时是真正意义上copy，当使用copy时相当于retai,
        NSLog(@"arr引用计数:%lu",(unsigned long)[arr retainCount]);
        NSLog(@"arr2引用计数:%lu",(unsigned long)[arr2 retainCount]);
        
        
    
    }
    return 0;
}
