//
//  main.m
//  内存管理1.11
//
//  Created by 张凯泽 on 15-1-11.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Peroson.h"
#import "Dog.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
       /*1.if(dog!=_dog)
        {
            [dog release];
            dog=[_dog retain];
        }
        演变过程：
        */
       //过程一；
        
        //Peroson *p1=[[Peroson alloc]init];
       // Dog *d=[[Dog alloc]init];
        
//        //演变1；
       //[d setName:@"小黑"];
//        //[p1 setDog:d];
        
//        //演变2
//        Dog *d1=[[Dog alloc]init];
//        [d1 setName:@"大黄"];
//        [p1 setDog:d1];//
        
        //演变3
//        [p1 setDog:d];//狗的饮用计数为2
//        [d release];//狗的饮用计数为1
//        [p1 setDog:d];
//        
        
//    //怎样才算一个合理的内存管理
//        [p1 setDog:d];
//        [d release];//根据黄金法则有一个alloc就对应一个release，所以在把[p1 setDog:d];以后就应该 [d release];－－－Dog *d=[[Dog alloc]init];。。。。
//        
//        [p1 release];//人释放掉以后狗的饮用计数还是为1，所以在人调用dealloc之前调用［dog release］；
//        
//
        //2.对于引用计数的问题？
//        Dog *d=[[Dog alloc]init];//引用计数1
//        [d release];
//        NSLog(@"count=%ld",[d retainCount]);//在这里调用[d retainCount]，不对，因为dog已经销毁了，再调用它的方法不对。
        
        
        
        //3. 使用初始化的方法如何内存管理
//        Dog *d=[[Dog alloc]init];//1
//        [d setName:@"小黑"];
//        Peroson *p2=[[Peroson alloc]initWithDog:d];//2
//        [d release];//1
//        [p2 play];
//        [p2 release];
        /*内存管理不当：
         1.多release了，导致调用野指针，程序挂掉。
         2.少release，对象无法销毁，内存泄漏。
         */
        
        /*
         什么时候用retain,什么时候用release：
         1.给属性赋值的时候用retain.
         2.调用dealloc方法时，还有set方法时需要对原有对象赋值的时候。
         */

        
        
    }
    return 0;
}
