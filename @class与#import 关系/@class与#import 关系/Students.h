//
//  Students.h
//  @class与#import 关系
//
//  Created by 张凯泽 on 15-1-1.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Students : NSObject
{
    NSString*name;
}
-(void)setName:(NSString*)_name;
-(NSString*)name;
-(void)work;

@end
