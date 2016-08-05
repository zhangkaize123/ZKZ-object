//
//  NSString+Test.m
//  类目练习2
//
//  Created by 张凯泽 on 15-1-7.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "NSString+Test.h"

@implementation NSString (Test)
-(NSString*)test
{
//    NSRange range={1,1};
//    NSMutableString *string2=[[NSMutableString alloc]init];
//    for (long i=self.length-1; i>=0; i--)//self 代替当前的对象。
//    {
//        range.location=i;
//        NSString*string=[self substringWithRange:range];
//        [string2 appendString:string];
//        
//    }
//    return string2;
    NSString*test=[[NSString alloc]init];
    int a=(int)(self.length-1);
    for (int i=a; i>=0; i--)
    {
        NSString *temp=[self substringFromIndex:i];
        NSString *t1=[temp substringToIndex:1];
        test = [[NSString alloc]initWithFormat:@"%@%@",test,t1 ];
    }
    return test;
    
    
}
@end
