//
//  User.h
//  自己的类如何实现拷贝
//
//  Created by 张凯泽 on 15-1-13.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject<NSCopying>
@property(strong,nonatomic)NSMutableArray *apple;
@property(assign,nonatomic)int age;
@end
