//
//  Manager.h
//  manager_管理员
//
//  Created by 张凯泽 on 14-12-29.
//  Copyright (c) 2014年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Manager : NSObject
{
    NSString*manager1;
    NSInteger password;
}
-(void)setManger1:(NSString*)_manager1;
-(NSString*)manager1;
-(void)setPassword:(NSInteger)_password;
-(NSInteger)password;
-(BOOL)changmanager;


@end
