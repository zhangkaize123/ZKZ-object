//
//  Nurse.m
//  KVO
//
//  Created by 张凯泽 on 15-1-17.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "Nurse.h"

@implementation Nurse
- (instancetype)initWithChildren:(Children*)_child
{
    self = [super init];
    if (self)
    {
        child=[_child retain];
        //观察小孩的happyvalue;
        [child addObserver:self
                forKeyPath:@"happyvalue"
                   options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld
                   context:nil];//使用kvo为对象（child）添加一个观察者
        //观察小孩的hungryvalue;
        [child addObserver:self
                forKeyPath:@"hungryvalue"
                   options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld
                   context:nil];
        
    }
    return self;
}

-(void)observeValueForKeyPath:(NSString *)keyPath
                     ofObject:(id)object
                       change:(NSDictionary *)change
                      context:(void *)context
{
    //如何判断是happyvalue还是happyvalue可以通过keyPath来判断。
    if ([keyPath isEqual:@"happyvalue"])//比较的是地址
    {
        NSLog(@"%@",change);
        NSNumber *value=[change objectForKey:@"new"];
        int a=[value intValue];
        if(a<90)
        {
            [self play];
            
        }

    }
    
    
    
}

-(void)play
{
    
    NSLog(@"%@照顾%@",self.name,child.name);
    child.happyvalue=100;
}

- (void)dealloc
{
    [child release];
    NSLog(@"方法被调用");
    [super dealloc];
}
@end
