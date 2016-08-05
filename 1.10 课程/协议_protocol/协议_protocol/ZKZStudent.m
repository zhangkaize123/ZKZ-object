//
//  ZKZStudent.m
//  协议_protocol
//
//  Created by 张凯泽 on 15-1-10.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "ZKZStudent.h"

@implementation ZKZStudent

-(void)say
{
    NSLog(@"在说话");
}
#pragma mark - ZKZTest  这是协议方法
//预览时可是区分是本类方法还是协议方法
-(void)finish// 必须实现的。
{
    NSLog(@"在学习");
}
-(void)wear//可实现可不实现。
{
    NSLog(@"穿戴整齐");
}
@end
