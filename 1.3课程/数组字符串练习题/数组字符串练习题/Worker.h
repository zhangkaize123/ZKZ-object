//
//  Worker.h
//  数组字符串练习题
//
//  Created by 张凯泽 on 15-1-4.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Worker : NSObject
{
    NSString*name;
    int age;
    int salary;

}
-(void)setName:(NSString*)_name;
-(NSString*)name;
-(void)setAge:(int)_age;
-(int)age;
-(void)setSalary:(int)_salary;
-(int)salary;
-(void)work;
@end
