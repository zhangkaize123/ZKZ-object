//
//  main.m
//  kvc 路径
//
//  Created by 张凯泽 on 15-1-17.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Author.h"
#import "Book.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        
        //可以通过key-value路径来给属性设值与取值
        Book *b=[[Book alloc]init];
        Author *a=[[Author alloc]init];
        [b setValue:a forKey:@"author"];
        [b setValue:@"莫言" forKeyPath:@"author.name"];
        //给book里边的作者的名字赋值。
        NSString *str=[a valueForKey:@"name"];
        NSString *str1=[b valueForKeyPath:@"author.name"];
        NSLog(@"%@",str1);
    }
    return 0;
}
