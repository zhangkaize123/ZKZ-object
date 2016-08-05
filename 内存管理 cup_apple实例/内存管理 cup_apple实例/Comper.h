//
//  Comper.h
//  内存管理 cup_apple实例
//
//  Created by 张凯泽 on 14-12-30.
//  Copyright (c) 2014年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cpu.h"
#import "Itel.h"
@interface Comper : NSObject
{
    Cpu*cpu;
    
}
-(void)setCpu:(id)_cpu;
@end
