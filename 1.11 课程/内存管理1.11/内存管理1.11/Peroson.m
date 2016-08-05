//
//  Peroson.m
//  内存管理1.11
//
//  Created by 张凯泽 on 15-1-11.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "Peroson.h"
#import "Peroson.h"
@implementation Peroson
- (instancetype)initWithDog:(Dog*)_dog
{
    self = [super init];
    if (self)
    {
        dog=[_dog retain];//不需要加［dog release］因为初始化只用一次。
        
    }
    return self;
}
-(void)setName:(NSString*)_name
{
    if (name!=_name)
    {
        [name release];
        name=[_name retain];
    }
}
//演变1；
//-(void)setDog:(Dog*)_dog
//{
//    dog=_dog;//这样做发现retaincount还是1.
//}
////演变2；
//-(void)setDog:(Dog*)_dog
//{
//    [dog release];
//    dog=[_dog retain];//现在传过来的_dog大黄，而dog是小黑所以应该把dog小黑释放掉。
//}
//演变3；
//-(void)setDog:(Dog*)_dog
//{
//    [dog release];//dog 是小黑，现在人有调用setdog方法_dog 是小黑，dog release
//    dog=[_dog retain];//掉后dog申请的空间释放了_dog相当于野指针，出问题。
//}
//最终版
-(void)setDog:(Dog*)_dog
{
    if (dog!=_dog)
    {
        [dog release];//释放对狗的所有权。
        dog=[_dog retain];
    }
    
}
-(void) play
{
    [dog release];//0
    NSLog(@"人在玩狗%@",[dog name]);
}
- (void)dealloc
{
    //人里边的属性都要进行release
    [dog release];//参考问题3:因为dog已经销毁，再调用销毁的指针的方法，出错。已经销毁的指针是野指针。EXC_BAD代表野指针。
    [name release];
    NSLog(@"person dealloc");
    [super dealloc];
}
@end
