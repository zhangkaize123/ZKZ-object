//
//  Person.m
//  自定义类型的类如何归档功能
//
//  Created by 张凯泽 on 15-1-15.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "Person.h"

@implementation Person
@synthesize name,age,array;
-(void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:name forKey:@"NAME"];
    [aCoder encodeInteger:age forKey:@"AGE"];
    [aCoder encodeObject:array forKey:@"ARRAGE"];
}
-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self=[super init];
    if (self!=nil)
    {
        self.name=[aDecoder decodeObjectForKey:@"NAME"];
        self.age=[aDecoder decodeIntForKey:@"AGE"];
        self.age=[aDecoder decodeObjectForKey:@"ARRAGE"];
        
    }
    
    
    return self;
}
@end
