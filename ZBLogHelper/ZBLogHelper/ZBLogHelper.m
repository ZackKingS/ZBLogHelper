//
//  ZBLogHelper.m
//  incaf
//
//  Created by 柏超曾 on 2017/8/24.
//  Copyright © 2017年 柏超曾. All rights reserved.
//

#import "ZBLogHelper.h"


#define location   [NSString stringWithFormat:@"[ %s :%d行]", [[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String],__LINE__]

@implementation ZBLogHelper
+(void)writeIn:(NSString *)strr Location:(NSString *)loca{
    
    // 1.需要知道这个对象存在哪里，所以需要一个文件夹的路径
    // 找到Documents文件夹路径
    NSString *documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    
    
    NSString *content = strr;
    
    //    // 2.创建要存储的内容：字符串
    //    NSString *str = [NSString stringWithFormat:@"%@----%@-----%@",[self getTime], location,content];
    //    // 3.需要知道字符串最终存储的地方，所以需要创建一个路径去存储字符串
    NSString *strPath = [documentsPath stringByAppendingPathComponent:@"text.txt"];
    //
    
    
    BOOL exist =   [[ [NSFileManager alloc]init]  fileExistsAtPath:strPath];
    
    
    NSString *str = @"";
    
    if (exist) {  //已经存在
        
        NSString *newStr = [NSString stringWithContentsOfFile:strPath encoding:NSUTF8StringEncoding error:nil];
        newStr =   [NSString stringWithFormat:@" %@\n   %@------  %@----------------%@ " ,newStr,[self getTime] ,loca ,content];
        [newStr writeToFile:strPath atomically:YES encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"%@", newStr);
        
        
    }else{
        
        // 2.创建要存储的内容：字符串
        str = [NSString stringWithFormat:@"%@------  %@-----------------%@",[self getTime], loca,content];
        [str writeToFile:strPath atomically:YES encoding:NSUTF8StringEncoding error:nil];
        NSString *newStr = [NSString stringWithContentsOfFile:strPath encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"%@", newStr);
    }
    
    
    
}



+(NSString *)getTime{
    NSDate *datenow = [NSDate date];
    NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970]];
    
    NSTimeInterval time=[timeSp doubleValue]+28800;//因为时差问题要加8小时 == 28800 sec
    
    NSDate *detaildate=[NSDate dateWithTimeIntervalSince1970:time];
    
    
    
    NSString *str =[detaildate description];
    
    
    return str;
    
    
}

@end
