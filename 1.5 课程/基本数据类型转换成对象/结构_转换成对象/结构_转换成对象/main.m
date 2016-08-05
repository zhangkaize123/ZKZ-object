//
//  main.m
//  结构_转换成对象
//
//  Created by 张凯泽 on 15-1-5.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    //
    //NSValue 可以对结构进行封装。
    //1.封装
    NSRange range1={10,20};
    NSValue *value1=[NSValue valueWithRange:range1];
    CGPoint p={1.20};
    NSValue *value2=[NSValue valueWithPoint:p];
    //解包
    NSRange r=[value1 rangeValue];
    NSLog(@"location=%lu,length=%lu",r.location,r.length);
    //______________________________________________________
    //对于自定义的数据类型如何封装和解包。
    typedef struct tagPerson
    {
        char name[13];
        int age;
    }Person;
    Person zs={"zhangkaize",23};
    NSValue *va=[ NSValue value:&zs withObjCType:@encode(Person) ];
    //@encode 就是把Person 这个数据类型转换成一个c  的字符串。
    // 对自定义类型解包
    Person li;
    [va getValue:&li];
    NSLog(@"name=%s,age=%d",li.name,li.age);
    
    
    return 0;
}
