//
//  main.m
//  数字对象
//
//  Created by 张凯泽 on 15-1-5.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    //____________NSNumber_____________________________
    //把基本数据类型封装成对象
    NSNumber *intnumber=[NSNumber numberWithInt:12];
    NSNumber *floatnumber=[NSNumber numberWithFloat:3.14];
    NSNumber *boolnumber=[NSNumber numberWithBool:YES];
    NSNumber *charnumber=[NSNumber numberWithChar:'a'];
    NSArray *array=[NSArray arrayWithObjects:intnumber,floatnumber,boolnumber,charnumber ,nil];
        NSLog(@"%@",array);
    //解包
    int number1=[intnumber intValue];
    float number2=[floatnumber floatValue];
    BOOL number3=[boolnumber boolValue];
    char number4=[charnumber charValue];
    //______________________________________________________________
    //优化语法
    NSNumber *n1=@1;
    NSNumber *n2=@3.24;
    NSNumber *n3=@'a';
    NSDictionary*dic=@{@"key":@"value"};
    
    
    
    
    
    return 0;
}
