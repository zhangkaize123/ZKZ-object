//
//  Person.h
//  KVC
//
//  Created by 张凯泽 on 15-1-17.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
@interface Person : NSObject
{
    NSString *name;
    Dog *dog;
    int age;
}
-(void)setDog:(Dog*)_dog;
@end
