//
//  Manager.m
//  manager_管理员
//
//  Created by 张凯泽 on 14-12-29.
//  Copyright (c) 2014年 wyzc. All rights reserved.
//

#import "Manager.h"

@implementation Manager
-(void)setManger1:(NSString*)_manager1
{
    manager1=_manager1;
}
-(NSString*)manager1
{
    return manager1;
}
-(void)setPassword:(NSInteger)_password
{
    password=_password;
}
-(NSInteger)password
{
    return password;
}
-(BOOL)changmanager
{
    NSLog(@"请输入旧的密码");
    int oldpassword;
    scanf("%d",&oldpassword);
    if (oldpassword==password)
    {
        NSLog(@"请输入新密码");
        int new;
        scanf("%d",&new);
        password=new;
        return YES;
    }
    return NO;
}
@end
