//
//  main.m
//  KVO
//
//  Created by 张凯泽 on 15-1-17.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Nurse.h"
#import "Children.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        Children *c=[[Children alloc]init];
       // c.name=@"kviy";
        Nurse *n=[[Nurse alloc]initWithChildren:c];
        n.name=@"lusy";
        [n setValue:@"kviy" forKeyPath:@"child.name"];
        [[NSRunLoop currentRunLoop]run];
        
    }
    return 0;
}
