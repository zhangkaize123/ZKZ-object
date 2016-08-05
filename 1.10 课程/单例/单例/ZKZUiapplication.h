//
//  ZKZUiapplication.h
//  单例
//
//  Created by 张凯泽 on 15-1-11.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZKZUiapplication : NSObject
{
    NSString *name;
}
-(void)setName:(NSString*)_name;
-(NSString*)name;
+(id)share;
-(NSString*)description;
@end
