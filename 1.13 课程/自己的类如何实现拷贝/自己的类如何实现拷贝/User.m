//
//  User.m
//  自己的类如何实现拷贝
//
//  Created by 张凯泽 on 15-1-13.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "User.h"

@implementation User
@synthesize apple,age;
-(instancetype)copyWithZone:(NSZone *)zone
{
    /*深浅copy判定方法：
     如果没有对，属性copy那么就是浅复制，如果对属性copy那么就是深kaobe。
     */
//____________浅拷贝的实现__________________________________
//    User *copyuser=[[self class]allocWithZone:zone];
//    copyuser.apple=self.apple;//浅拷贝，只是将apple这个对象retain了一下
//    
//    copyuser.age=self.age;
//    return copyuser;
//_______________深拷贝的实现_____________________________________
    User *copyuser=[[self class]allocWithZone:zone];
    NSMutableArray *array1=[self.apple mutableCopy];//1
    
    copyuser.apple=array1;//2
    [array1 release];
    copyuser.age=self.age;
    return copyuser;
}
- (void)dealloc
{
    NSLog(@"对象内存释放");
    [super dealloc];
}



@end
