//
//  Car.h
//  封装 特性
//
//  Created by 张凯泽 on 14-12-30.
//  Copyright (c) 2014年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
{
    float capacity;//对属性的封装
}
-(void)setCapacity:(float)_capacity;
// 对方法封装。
@end
