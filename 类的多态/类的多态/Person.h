//
//  Person.h
//  类的多态
//
//  Created by 张凯泽 on 15-1-1.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Printer.h"

@interface Person : NSObject
{
   // NSString*e;
}
-(void)setE:(NSString*)_a;
-(void)setWithPrinter;//:(Printer*)_printer;
-(NSString*)name;
@end
