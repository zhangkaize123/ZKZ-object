//
//  Book.m
//  kvc 路径
//
//  Created by 张凯泽 on 15-1-17.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "Book.h"

@implementation Book
- (instancetype)initWithAuthor:(Author*)_author
{
    self = [super init];
    if (self)
    {
        author=_author;
        
        
    }
    return self;
}
@end
