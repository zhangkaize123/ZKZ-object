//
//  ZKZUiapplication.m
//  单例
//
//  Created by 张凯泽 on 15-1-11.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "ZKZUiapplication.h"
static ZKZUiapplication *appli=nil;
@implementation ZKZUiapplication
+(id)share
{
    @synchronized(self)
    {
      if (appli==nil)
      {
            appli=[[[self class]alloc]init];
           return appli;
      }
    }
    return appli;
}
+(id)allocWithZone:(struct _NSZone *)zone
{
    if (appli==nil)
    {
        appli=[super allocWithZone:zone];
        return appli;
    }
    return appli;
}






-(void)setName:(NSString*)_name
{
    name=_name;
}
-(NSString*)name
{
    return name;
}
-(NSString*)description
{
    return [NSString stringWithFormat:@"%@",name];
    
}
@end
