//
//  Person.h
//  类方法的内存管理
//
//  Created by 张凯泽 on 15-1-12.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

{
    NSString  *name;
}
+(instancetype)personWithName:(NSString*)_name;
-(NSString*)name;
@end
