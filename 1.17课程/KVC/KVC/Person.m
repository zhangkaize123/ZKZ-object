//
//  Person.m
//  KVC
//
//  Created by 张凯泽 on 15-1-17.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "Person.h"

@implementation Person
- (NSString *)description
{
    return [NSString stringWithFormat:@"name=%@,age=%d", name,age];
}
-(void)setDog:(Dog*)_dog;
{
    if (dog!=_dog)
    {
        [dog release];
        dog=[_dog retain];
        
    }
    NSLog(@"调用了此方法");
}
@end
