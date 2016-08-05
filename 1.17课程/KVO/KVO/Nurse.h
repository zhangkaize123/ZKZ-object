//
//  Nurse.h
//  KVO
//
//  Created by 张凯泽 on 15-1-17.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Children.h"
@interface Nurse : NSObject
{
    Children *child;
}
@property(strong,nonatomic)NSString*name;
- (instancetype)initWithChildren:(Children*)_child;
@end
