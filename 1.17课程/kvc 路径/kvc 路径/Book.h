//
//  Book.h
//  kvc 路径
//
//  Created by 张凯泽 on 15-1-17.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Author.h"
@interface Book : NSObject
{
    Author *author;
}
- (instancetype)initWithAuthor:(Author*)_author;
@end
