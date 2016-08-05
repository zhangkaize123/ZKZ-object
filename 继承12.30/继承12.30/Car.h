//
//  Car.h
//  继承12.30
//
//  Created by 张凯泽 on 14-12-30.
//  Copyright (c) 2014年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
{
    NSString*color;
}
-(void)setColor:(NSString*)_color;
-(void)brake;
@end
