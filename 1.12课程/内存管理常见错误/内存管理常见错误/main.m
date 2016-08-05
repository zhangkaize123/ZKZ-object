//
//  main.m
//  内存管理常见错误
//
//  Created by 张凯泽 on 15-1-12.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
/*1.-(void)description
 {
    NSString*string=[NSString stringWithFormat:@"%@",name]
 
    [string release]//❌不加release，根据黄金法则，有release必须有alloc或者retain.根本没有，所以错误。
 
    NSLog(@"%@",string);
 }
 */
  /*2.Laptop *latop=[[Laptop alloc]init];
   laptop.name=[NSString stringWithFormat:@"apple"];
   NSArray *array=[NSArray arrayWithObject:laptop];
   [array release];//❌
   正确：[latop release];
   */
    /*3.
     -(void)memory
     {
           Car *car=[[Car alloc]init];
             if(gas==0)
          {
              return;//❌
           }
         [car release];
     }
     因为当gas等于0时，对象return；  car release没有办法执行，car内存无法销毁。
     //正确解法1.
     -(void)memory
     {
     Car *car=［[[Car alloc]init]auto release］;／／
     if(gas==0)
     {
     return;
     }
     [car release];
     }
     //正确解法2.
     -(void)memory
     {
     Car *car=[[Car alloc]init];／／
     if(gas==0)
     {
     
     ［car release］；／／／
     return;
     }
     [car release];
     }
     */
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
