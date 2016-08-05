//
//  Person.h
//  循环引用
//
//  Created by 张凯泽 on 15-1-13.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Dog;
@interface Person : NSObject
@property(strong,nonatomic)Dog *dog;
@end
