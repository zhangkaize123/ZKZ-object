//
//  main.m
//  Array
//
//  Created by 张凯泽 on 15-1-3.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSString*s1=@"zhangsna";
        NSString*s2=@"li里";
        NSString*s3=@"wangwu";
    NSArray* arr1=[[NSArray alloc]initWithObjects:s1,s2,s3, nil];
//    for(NSString*str in arr1)
//    {
//        NSLog(@"%@",str);
//    }
    
    //2.种
    //NSLog(@"%@",arr1.description);
    
    
//    NSString *str1=[arr1 objectAtIndex:0];
    //数组在哪个下标的元素。。。。。。很重要。。。。。。
//    NSLog(@"%@",str1);
    //__________________4.数组种是否包含某个对象_________
    if([arr1 containsObject:@"li里"])//判断的是指针地址。。。。
    {
        NSLog(@"有这个对象");
    }
    
   // _______________5.查找对象在数组中的下标_______
//    NSInteger index=[arr1 indexOfObject:@"li"];
    
//    if (index==NSNotFound)
//    {
//        NSLog(@"没有次对象");
//    }
//    NSLog(@"%ld",index);
    //_______________6.链接数组的字符串____________
    // 必须注意数组中的元素全都是字符串才可以链接
    NSString*s11=@"agaer";
   NSArray *arra=[s11 componentsSeparatedByString:@"afd"];
//    NSString*str3=[arr1 componentsJoinedByString:@"-"];
//    NSLog(@"%@",str3);
    
    //_____________7访问数组最后一个元素_________________
//    NSString* str4=[arr1 lastObject];//等价于arr1.lastObject属于get方法
//    //1.有返回值2方法名：.lastObject与lastObject相同就可以用点语法。
//    NSLog(@"%@",str4);
    
    
    //________________8追加元素______________________
//    NSArray *arr2=[arr1 arrayByAddingObject:@"liuqi"];
//    NSLog(@"%@",arr2);
    
    
    
    //____________________数组问题__________________________
    /*
     1.数组中的元素 不能是基本类型，只能是对象类型。。。。。。。
     2.数组越界问题。
    */
    /*数组越界的报错目录。
      Terminating app due to uncaught exception 'NSRangeException', reason: '*** -[__NSArrayI objectAtIndex:]: index 3 beyond bounds [0 .. 2]'
     */
    //数组越界解决问题：
//    int index1=3;
//    NSLog(@"%ld",arr1.count);
//    if (index1<arr1.count)
//    {
//        
//        NSLog(@"%@",[arr1 objectAtIndex:index1]);
//    }
//    else
//    {
//        NSLog(@"数组越界");
//    }
    
    //---------------------shu数组的便利---------------------
    //1.普通便利：
    
    
    //@property (readonly) NSUInteger count;
    //readonly ...... 代表只有get方法没有set方法
    
    
    
//    for (int i=0; i<arr1.count; i++)
//    {
//        NSString*str5=[arr1 objectAtIndex:i];
//        NSLog(@"%@",str5);
    
//        //如果使用下标 只能使用普通便利方法
//        if (i==1)
//        {
//            
//        }
//    }
    //2.快速便利
//    for (NSString*str6 in arr1)
//    {
//        NSLog(@"%@",str6);
//    }
//    
   // -------------4.4以后 编译器对语法做了优化------------------
    //1.数组的创建
    NSArray*arr3=@[s1,s2,s3];
    //等价于[ NSArray arrayWithObject:s1,s2,nil];
    NSString*str5=arr3[0];
    NSLog(@"%@",str5);
    
    return 0;
}
