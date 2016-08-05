//
//  Children.m
//  KVO
//
//  Created by 张凯泽 on 15-1-17.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "Children.h"

@implementation Children
@synthesize name;
- (instancetype)init
{
    self = [super init];
    if (self)
    {
        [NSTimer scheduledTimerWithTimeInterval:1
                                        target:self
                                       selector:@selector(timerAction:) userInfo:nil
                                        repeats:YES];
        
        self.happyvalue=100;
        self.hungryvalue=100;
        
        
    }
    return self;
}
-(void)timerAction:(NSTimer*)_time
{
    int a=_happyvalue;
    //_happyvalue--;
    
    self.happyvalue=--a;
    int b=_hungryvalue;
    self.hungryvalue=--b;
}
@end
