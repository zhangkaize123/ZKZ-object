//
//  main.m
//  NSNull
//
//  Created by 张凯泽 on 15-1-5.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
     //NSArray *array=@[nil,nil];//nil不能存入数组或字典中
    NSNull *nu1=[NSNull null];
    NSNull *nu2=[NSNull null];
    //在数组中某个空间我不想用但是也不想让其他对象使用可以使用NSNull
    NSMutableArray *array=[[NSMutableArray alloc]initWithObjects:nu1,@"zhangkaize",nu2, nil];
    for (int i=0;i< array.count; i++)
    {
        if ([array objectAtIndex:i]==[NSNull null])
        {
            [array replaceObjectAtIndex:i withObject:@"wowowow"];
        }
    }
        NSLog(@"%@",array);
    
    return 0;
}
