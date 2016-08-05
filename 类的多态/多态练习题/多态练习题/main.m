//
//  main.m
//  多态练习题
//
//  Created by 张凯泽 on 15-1-1.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Instument.h"
#import "Person.h"
#import "Piano.h"
#import "Violin.h"
int main(int argc, const char * argv[]) {
    Person *person=[[Person alloc]init];
    //Instument *instument=[[Instument alloc]init];
    Piano *piano= [[Piano alloc]init];
    Violin *violin= [[Violin alloc]init];
    int a;
    scanf("%d",&a);
    if (a==1)
    {
        [person dowith:piano];
    }
else
{
    [person dowith:violin];
}
    
    
    
    
    return 0;
}
