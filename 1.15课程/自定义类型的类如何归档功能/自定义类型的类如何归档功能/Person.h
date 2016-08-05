//
//  Person.h
//  自定义类型的类如何归档功能
//
//  Created by 张凯泽 on 15-1-15.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCoding>
@property(strong,nonatomic)NSString*name;
@property(assign,nonatomic)int age;
@property(strong,nonatomic)NSArray*array;
@end
