//
//  Peroson.h
//  内存管理1.11
//
//  Created by 张凯泽 on 15-1-11.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Dog;
@interface Peroson : NSObject
{
    NSString *name;
    Dog *dog;
    //int age; 它不需要进行内存管理，内存管理只针对于对象而言，对于基本数据类型不需要进行。
}
- (instancetype)initWithDog:(Dog*)_dog;
-(void)setName:(NSString*)_name;
-(void)setDog:(Dog*)_dog;
-(void) play;
@end
