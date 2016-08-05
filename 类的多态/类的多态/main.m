//
//  main.m
//  类的多态
//
//  Created by 张凯泽 on 15-1-1.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Colorprinter.h"
#import "Person.h"
#import "Blackprinter.h"
#import "Printer.h"
int main(int argc, const char * argv[])
{
    
    //多态 ：用父类声明的指针变量，可以指向子类对象。
    
    
    Person *p=[[Person alloc]init];
    Colorprinter *color=[[Colorprinter alloc]init];
   // Blackprinter *black=[[Blackprinter alloc]init];
    //[p withPrinter:color];//[p setwithPrinter:color]

    //[p withPrinter:black];
    //[p setAge:12];
    //p.age=12;
    //[p sete:@"123"];
      //p.E=@"234" ;
    p.WithPrinter;
    return 0;
}
