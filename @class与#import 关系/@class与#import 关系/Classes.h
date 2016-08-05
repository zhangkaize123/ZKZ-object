//
//  Classes.h
//  @class与#import 关系
//
//  Created by 张凯泽 on 15-1-1.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Students.h"这样做不可以和在classes类里边导入的#import Class.h  形成互相饮用。所用使用@class。
@class Students;//告诉编译器有这个类名，并没有告诉类里边属性及方法。
@interface Classes : NSObject
{
//Students*stu;
}
//-(void)setStu:(Students*)_stu;
//-(Students*)Stu;
-(void)show;
@end
