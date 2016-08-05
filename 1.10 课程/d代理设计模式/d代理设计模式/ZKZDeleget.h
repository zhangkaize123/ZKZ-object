//
//  ZKZDeleget.h
//  d代理设计模式
//
//  Created by 张凯泽 on 15-1-10.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZKZChildren.h"
@protocol ZKZDeleget <NSObject>
-(void)play:(ZKZChildren*)_chile;
@end
