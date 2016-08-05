//
//  main.m
//  数组字符串练习题
//
//  Created by 张凯泽 on 15-1-3.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Worker.h"
int main(int argc, const char * argv[]) {
// 1.建立一个数组存1到100的整数，并把他们便利出来
//    NSMutableArray *arr1=[NSMutableArray arrayWithCapacity:100];
//    for (int i=1; i<=100; i++)
//    {
//        NSNumber *num1=[[NSNumber alloc]initWithInt:i];
//        [arr1 addObject:num1];//数组只能添加对象，不能添加基本类型
//        
//    }
    //NSLog(@"%@",arr1);
    //    NSArray *arr1=[NSMutableArray arrayWithCapacity:100];
    //    如果换成这个数据类型参考笔记本内存分析.........
    //第一种便利
//    for (int i=0; i<arr1.count; i++)
//    {
//        NSNumber*number=[arr1 objectAtIndex:i];//重点理解。。。。很重要。。
//        int value=[number intValue];
//        NSLog(@"%d",value);
//    }
    //第二种便利（快速便利）
//    for (NSNumber*num in arr1) {
//        NSLog(@"%@",num);
//    }
    
   //_______________________________________________________________
    
    /*2.设计一个工人类（Worker)，他有三个属性：姓名，年龄，工资
    (1)建立一个数组，在数组中增加三个工人，
     zhang3        18            5500
     li4           25            8000
     wang5         22            7000
     (2)在li4之前插入一个工人，信息为：“姓名：zhao6， 年龄24
     工资：3300
     （3）删除wang5的信息。
     （4）利用for循环便利，打印List中所有工人的信息。
     （5）利用迭代便利，对List中所有的工人调用work方法
    */
    
    Worker *w1=[[Worker alloc]init];
    w1.name=@"zhang3";
    w1.age=18;
    w1.salary=5500;
    Worker *w2=[[Worker alloc]init];
    w2.name=@"li4";
    w2.age=25;
    w2.salary=8000;
    Worker *w3=[[Worker alloc]init];
    w3.name=@"wang5";
    w3.age=22;
    w3.salary=7000;
    Worker *w4=[[Worker alloc]init];
    w4.name=@"zhao6";
    w4.age=24;
    w4.salary=3300;
    NSMutableArray *array1=[[NSMutableArray alloc]initWithCapacity:10];
    [array1 addObject:w1];
    [array1 addObject:w2];
    [array1 addObject:w3];
    NSInteger index=[array1 indexOfObject:w2];//获取li4的下标
    [array1 insertObject:w4 atIndex:index];
        //NSLog(@"%@",array1.description);
    [array1 removeObject:w3];
        NSLog(@"%@",array1.description);
//    for (Worker *worker in array1)
//    {
//      
//        [worker work];
//    }
//    for (int i=0; i<array1.count; i++)
//    {
//        Worker *worker1=[[Worker alloc]init];
//        worker1=[array1 objectAtIndex:i];
//        NSLog(@"%@", worker1.name);
//        NSLog(@"%d", worker1.age);
//        NSLog(@"%d", worker1.salary);
//    }
   // NSLog(@"%@",array1.description);//调用数组每个元素的description.    //打印的是指针地址
    return 0;
}
