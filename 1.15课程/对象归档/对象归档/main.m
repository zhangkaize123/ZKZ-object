//
//  main.m
//  对象归档
//
//  Created by 张凯泽 on 15-1-15.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {/*对象归档：就是把对象的数据写到硬盘上去（文件）。
// 方法1:一个对象归档成一个文件
      */
        //把对象归档成文件
//        NSArray *array=[[NSArray alloc]initWithObjects:@"zhangsan",@"lisi" ,nil];
//        //归档保存的文件路径。
//        NSString *filepath=[NSHomeDirectory()stringByAppendingPathComponent:@"zkz.zkz"];
//        //归档对象。
//        BOOL b=[NSKeyedArchiver archiveRootObject:array toFile:filepath];
//        if (b)
//        {
//            NSLog(@"保存成功");
//        }
//_______________解归档___________________________________
        //将文件还原成对象
//        NSString *filepath=[NSHomeDirectory()stringByAppendingPathComponent:@"zkz.zkz"];
//        NSArray *array=[NSKeyedUnarchiver unarchiveObjectWithFile:filepath];
//        NSLog(@"%@",array);
//        NSLog(@"%@",filepath);//获取文件路径。
        
        
 //方法2:
        
//    NSArray *array=[[NSArray alloc]initWithObjects:@"zhangsan",@"lisi" ,nil];
//        //创建归档对象。
//        NSMutableData *data=[NSMutableData data];
//        NSKeyedArchiver *archiver=[[NSKeyedArchiver alloc]initForWritingWithMutableData:data];
//        //编码数据和对象
//        [archiver encodeObject:array forKey:@"array"];
//        [archiver encodeObject:@"zhangsan" forKey:@"zs"];
//        //完成归档，将归档数据填充到data中去，此时data中已经储存了归档的数据。
//        [archiver finishEncoding];
//        
//        NSString *filepath=[NSHomeDirectory()stringByAppendingPathComponent:@"file.path"];
//        BOOL b=[data writeToFile:filepath atomically:YES];
//        if (b)
//        {
//            NSLog(@"归档成功");
//            NSLog(@"%@",filepath);//打印文件路径
//        }
 //______________________________解归档
//        //得当文件地址。
//        NSString *filepath=[NSHomeDirectory() stringByAppendingPathComponent:@"file.path"];
//        //读取归档数据。
//        NSData *data=[[NSData alloc]initWithContentsOfFile:filepath];
//        //建立解归档数据对象，
//        NSKeyedUnarchiver *unar=[[NSKeyedUnarchiver alloc]initForReadingWithData:data];
//        NSArray *arr=[unar decodeObjectForKey:@"array"];
//        NSString *str=[unar decodeObjectForKey:@"zs"];
//        NSLog(@"%@",arr);
//        NSLog(@"%@",str);
        
//        NSString *str=[[NSString alloc]initWithFormat:@"%d",1234];
//        [str writeToFile:@"zhagnseeee" atomically:YES encoding:NSUTF8StringEncoding error:nil];
//        
//        
        
        
//_______________如何获取沙盒地址____________________________________
        
        NSString *str=NSHomeDirectory();
        NSLog(@"%@",str);
        
        
        
        
        
        
        
        
    }
    return 0;
}
