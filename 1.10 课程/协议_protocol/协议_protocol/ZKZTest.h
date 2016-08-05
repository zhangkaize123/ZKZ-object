//
//  ZKZTest.h
//  协议_protocol
//
//  Created by 张凯泽 on 15-1-10.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ZKZTest <NSObject>
@required
-(void)finish;// 必须实现的。
@optional
-(void)wear;//可实现可不实现。
@end
