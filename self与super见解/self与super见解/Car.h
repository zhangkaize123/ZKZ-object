//
//  Car.h
//  self与super见解
//
//  Created by 张凯泽 on 14-12-31.
//  Copyright (c) 2014年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
{
    NSString*brade;
    NSString*color;
}
-(void)setBrade:(NSString*)_brade;
-(NSString*)Brade;
-(void)setColor:(NSString*)_color;
-(NSString*)Color;
-(void)brake;
-(void)speed;
@end
