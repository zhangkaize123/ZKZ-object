//
//  Dog.h
//  内存管理1.11
//
//  Created by 张凯泽 on 15-1-11.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject
{
    NSString *name;
}
-(NSString*)name;
-(void)setName:(NSString*)_name;
@end
